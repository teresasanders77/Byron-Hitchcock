<?php	
	// Admin Menu
	add_action( 'wp_ajax_Rich_Web_VSlider_Del', 'Rich_Web_VSlider_Del_Callback' );
	add_action( 'wp_ajax_nopriv_Rich_Web_VSlider_Del', 'Rich_Web_VSlider_Del_Callback' );

	function Rich_Web_VSlider_Del_Callback()
	{
		$number = sanitize_text_field($_POST['foobar']);
		global $wpdb;
		$table_name2 = $wpdb->prefix . "rich_web_video_slider_manager";
		$table_name3 = $wpdb->prefix . "rich_web_video_slider_videos";
		$wpdb->query($wpdb->prepare("DELETE FROM $table_name2 WHERE id=%d", $number));
		$wpdb->query($wpdb->prepare("DELETE FROM $table_name3 WHERE Slider_ID=%d", $number));
		die();
	}

	add_action( 'wp_ajax_Rich_Web_VSlider_Copy', 'Rich_Web_VSlider_Copy_Callback' );
	add_action( 'wp_ajax_nopriv_Rich_Web_VSlider_Copy', 'Rich_Web_VSlider_Copy_Callback' );

	function Rich_Web_VSlider_Copy_Callback()
	{
		$number = sanitize_text_field($_POST['foobar']); 
		global $wpdb;
		$table_name1 = $wpdb->prefix . "rich_web_video_slider_id";
		$table_name2 = $wpdb->prefix . "rich_web_video_slider_manager";
		$table_name3 = $wpdb->prefix . "rich_web_video_slider_videos";
		$table_name4 = $wpdb->prefix . "rich_web_video_slider_effects_data";
		$Rich_Web_VSlider_Manager=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name2 WHERE id=%d", $number));
		$Rich_Web_VSlider_Videos=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name3 WHERE Slider_ID=%d order by id", $number));

		$wpdb->query($wpdb->prepare("INSERT INTO $table_name2 (id, Slider_Title, Slider_Type, Slider_Video_Quantity) VALUES (%d, %s, %s, %d)", '', $Rich_Web_VSlider_Manager[0]->Slider_Title, $Rich_Web_VSlider_Manager[0]->Slider_Type, $Rich_Web_VSlider_Manager[0]->Slider_Video_Quantity));

		$Slider_ID=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name1 WHERE id>%d order by id desc limit 1",0));
		$Rich_Web_Sl_Id=$Slider_ID[0]->Slider_ID + 1;
		$wpdb->query($wpdb->prepare("INSERT INTO $table_name1 (id, Slider_ID) VALUES (%d, %d)", '', $Rich_Web_Sl_Id));
		
		for($i = 0; $i < $Rich_Web_VSlider_Manager[0]->Slider_Video_Quantity; $i++)
		{
			$wpdb->query($wpdb->prepare("INSERT INTO $table_name3 (id, Rich_Web_VSlider_Vid_Title, Rich_Web_VSlider_Add_Desc, Rich_Web_VSldier_Add_Img, Rich_Web_VSldier_Add_Vid, Rich_Web_VSldier_Add_Src, Rich_Web_VSldier_Add_Link, Rich_Web_VSldier_Add_ONT, Slider_ID) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %d)", '', $Rich_Web_VSlider_Videos[$i]->Rich_Web_VSlider_Vid_Title, $Rich_Web_VSlider_Videos[$i]->Rich_Web_VSlider_Add_Desc, $Rich_Web_VSlider_Videos[$i]->Rich_Web_VSldier_Add_Img, $Rich_Web_VSlider_Videos[$i]->Rich_Web_VSldier_Add_Vid, $Rich_Web_VSlider_Videos[$i]->Rich_Web_VSldier_Add_Src, $Rich_Web_VSlider_Videos[$i]->Rich_Web_VSldier_Add_Link, $Rich_Web_VSlider_Videos[$i]->Rich_Web_VSldier_Add_ONT, $Rich_Web_Sl_Id));
		}
		$Rich_Web_VSlider_Copied_Row=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name2 WHERE id>%d order by id desc", 0));
		$RichWeb_VidSl_ID = $wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name4 WHERE id=%s ", $Rich_Web_VSlider_Copied_Row[0]->Slider_Type));  
		$Rich_Web_VSlider_Copied_Row[0]->Slider_Type = $RichWeb_VidSl_ID[0]->slider_vid_name;
		echo json_encode($Rich_Web_VSlider_Copied_Row[0]);
		die();
	}

	add_action( 'wp_ajax_Rich_Web_VSlider_Edit_Main', 'Rich_Web_VSlider_Edit_Main_Callback' );
	add_action( 'wp_ajax_nopriv_Rich_Web_VSlider_Edit_Main', 'Rich_Web_VSlider_Edit_Main_Callback' );

	function Rich_Web_VSlider_Edit_Main_Callback()
	{
		$number = sanitize_text_field($_POST['foobar']);
		global $wpdb;
		$table_name2 = $wpdb->prefix . "rich_web_video_slider_manager";
		$Rich_Web_VSlider_Manager=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name2 WHERE id=%d", $number));
		print_r($Rich_Web_VSlider_Manager);
		die();
	}

	add_action( 'wp_ajax_Rich_Web_VSlider_Edit_Videos', 'Rich_Web_VSlider_Edit_Videos_Callback' );
	add_action( 'wp_ajax_nopriv_Rich_Web_VSlider_Edit_Videos', 'Rich_Web_VSlider_Edit_Videos_Callback' );

	function Rich_Web_VSlider_Edit_Videos_Callback()
	{
		$number = sanitize_text_field($_POST['foobar']);
		global $wpdb;

		$table_name3 = $wpdb->prefix . "rich_web_video_slider_videos";
		$array=array();
		
		$Rich_Web_VSlider_Videos=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name3 WHERE Slider_ID=%d order by id", $number));
		for($i = 0; $i < count($Rich_Web_VSlider_Videos); $i++)
		{
			$Rich_Web_VSlider_Videos[$i]->Rich_Web_VSlider_Vid_Title = html_entity_decode($Rich_Web_VSlider_Videos[$i]->Rich_Web_VSlider_Vid_Title);
			$Rich_Web_VSlider_Videos[$i]->Rich_Web_VSlider_Add_Desc = html_entity_decode($Rich_Web_VSlider_Videos[$i]->Rich_Web_VSlider_Add_Desc);
		}
		
		$array[]=$Rich_Web_VSlider_Videos;
		print json_encode($array);
		die();
	}

	add_action( 'wp_ajax_Rich_Web_VSlider_Vimeo', 'Rich_Web_VSlider_Vimeo_Callback' );
	add_action( 'wp_ajax_nopriv_Rich_Web_VSlider_Vimeo', 'Rich_Web_VSlider_Vimeo_Callback' );

	function Rich_Web_VSlider_Vimeo_Callback()
	{
		$Rich_Web_VSlider_Vimeo_Src = sanitize_text_field($_POST['foobar']);

		$Rich_Web_VSlider_Image=explode('video/',$Rich_Web_VSlider_Vimeo_Src);
		$Rich_Web_VSlider_Image_Real=unserialize(file_get_contents("http://vimeo.com/api/v2/video/$Rich_Web_VSlider_Image[1].php"));
		$Rich_Web_VSlider_Image_Real=$Rich_Web_VSlider_Image_Real[0]['thumbnail_large'];

		echo $Rich_Web_VSlider_Image_Real;
		die();
	}
	// Theme Menu
	add_action( 'wp_ajax_rich_web_VS_Del_Option', 'rich_web_VS_Del_Option_Callback' );
	add_action( 'wp_ajax_nopriv_rich_web_Del_Option', 'rich_web_VS_Del_Option_Callback' );

	function rich_web_VS_Del_Option_Callback()
	{
		$RW_VS_ID = sanitize_text_field($_POST['foobar']);

		global $wpdb;
		$table_name4  = $wpdb->prefix . "rich_web_video_slider_effects_data";
		$Rich_Web_Effects=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name4 WHERE id=%d", $RW_VS_ID));

		$wpdb->query($wpdb->prepare("DELETE FROM $table_name4 WHERE id=%d", $RW_VS_ID));
		
		if (strpos($Rich_Web_Effects[0]->slider_Vid_type, '/') !== false) :
		$RW_VS_Opt_Type = explode(" ",preg_replace("/\//",' ',$Rich_Web_Effects[0]->slider_Vid_type));
		$RW_VS_Opt_Type = $RW_VS_Opt_Type[0]. '-' .$RW_VS_Opt_Type[1];
		else:
		$RW_VS_Opt_Type = explode(" ", $Rich_Web_Effects[0]->slider_Vid_type);
		$RW_VS_Opt_Type = $RW_VS_Opt_Type[0];
		endif;
		$RW_VS_Checking=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name4 WHERE slider_Vid_type=%s", $Rich_Web_Effects[0]->slider_Vid_type));
		$RW_VS_Query_Tables = ['Content Slider'=>'rich_web_vs_effect_1' ,'Slick Slider' => 'rich_web_vs_effect_2','Thumbnails Slider'=>'rich_web_vs_effect_3' ,'Video Carousel/Content Popup'=>'rich_web_vs_effect_4' ,'Simple Video Slider'=>'rich_web_vs_effect_5' ,'Video Slider/Vertical Thumbnails'=>'rich_web_vs_effect_6' ,'Horizontal Posts Slider'=>'rich_web_vs_effect_7' ,'Rich Slider'=>'rich_web_vs_effect_8' ,'TimeLine Slider'=>'rich_web_vs_effect_9' ,'Amazing Simple Slider'=>'rich_web_vs_effect_10' ,'News Slider'=>'rich_web_vs_effect_11' ];
		$RW_VS_Q_Table = $wpdb->prefix  . $RW_VS_Query_Tables[$Rich_Web_Effects[0]->slider_Vid_type];
		$RW_VS_Load_Q_Table = $wpdb->prefix  . $RW_VS_Query_Tables[$Rich_Web_Effects[0]->slider_Vid_type] . "_loader";
		$wpdb->query($wpdb->prepare("DELETE FROM $RW_VS_Q_Table WHERE RW_VS_ID=%s", $RW_VS_ID));
		$wpdb->query($wpdb->prepare("DELETE FROM $RW_VS_Load_Q_Table WHERE RW_VS_ID=%s", $RW_VS_ID));	
		if (count($RW_VS_Checking) == 0) {
			$file_php = plugin_dir_path( __FILE__ ) . "PHP/RW_VS_Slider_".$RW_VS_Opt_Type.".php";
			$file_js = plugin_dir_path( __FILE__ ) . "Scripts/RW_VS_Slider_".$RW_VS_Opt_Type.".js.php";
			$file_css = plugin_dir_path( __FILE__ ) . "Style/RW_VS_Slider_".$RW_VS_Opt_Type.".css.php";
			unlink($file_php);
			unlink($file_js);
			unlink($file_css);
			$wpdb->query( "DROP TABLE IF EXISTS $RW_VS_Q_Table" );
			$wpdb->query( "DROP TABLE IF EXISTS $RW_VS_Load_Q_Table" );
			$Rich_Web_Effects[0]->slider_class =  $RW_VS_Opt_Type;
			echo json_encode($Rich_Web_Effects[0]);
		}else{
			echo 'Delete';
		}
		die();

	}

	add_action( 'wp_ajax_rich_web_VS_Edit_Option', 'rich_web_VS_Edit_Option_Callback' );
	add_action( 'wp_ajax_nopriv_rich_web_VS_Edit_Option', 'rich_web_VS_Edit_Option_Callback' );

	function rich_web_VS_Edit_Option_Callback()
	{
		$RW_VS_ID = sanitize_text_field($_POST['foobar']);



		global $wpdb;
		$table_name4  = $wpdb->prefix . "rich_web_video_slider_effects_data";
		$table_name5  = $wpdb->prefix . "rich_web_vs_effect_1";
		$table_name6  = $wpdb->prefix . "rich_web_vs_effect_2";
		$table_name7  = $wpdb->prefix . "rich_web_vs_effect_3";
		$table_name8  = $wpdb->prefix . "rich_web_vs_effect_4";
		$table_name9  = $wpdb->prefix . "rich_web_vs_effect_5";
		$table_name10 = $wpdb->prefix . "rich_web_vs_effect_6";
		$table_name11 = $wpdb->prefix . "rich_web_vs_effect_7";
		$table_name12 = $wpdb->prefix . "rich_web_vs_effect_8";
		$table_name13 = $wpdb->prefix . "rich_web_vs_effect_9";
		$table_name14 = $wpdb->prefix . "rich_web_vs_effect_10";
		$table_name15 = $wpdb->prefix . "rich_web_vs_effect_11";
		$table_name5_Loader = $wpdb->prefix . "rich_web_vs_effect_1_loader";
		$table_name6_Loader = $wpdb->prefix . "rich_web_vs_effect_2_loader";
		$table_name7_Loader = $wpdb->prefix . "rich_web_vs_effect_3_loader";
		$table_name8_Loader = $wpdb->prefix . "rich_web_vs_effect_4_loader";
		$table_name9_Loader = $wpdb->prefix . "rich_web_vs_effect_5_loader";
		$table_name10_Loader = $wpdb->prefix . "rich_web_vs_effect_6_loader";
		$table_name11_Loader = $wpdb->prefix . "rich_web_vs_effect_7_loader";
		$table_name12_Loader = $wpdb->prefix . "rich_web_vs_effect_8_loader";
		$table_name13_Loader = $wpdb->prefix . "rich_web_vs_effect_9_loader";
		$table_name14_Loader = $wpdb->prefix . "rich_web_vs_effect_10_loader";
		$table_name15_Loader = $wpdb->prefix . "rich_web_vs_effect_11_loader";
		$array=array();

		$Rich_Web_Effects=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name4 WHERE id=%d", $RW_VS_ID));

		if($Rich_Web_Effects[0]->slider_Vid_type=='Content Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name5 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name5_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Slick Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name6 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name6_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Thumbnails Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name7 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name7_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Video Carousel/Content Popup')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name8 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name8_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Simple Video Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name9 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name9_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Video Slider/Vertical Thumbnails')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name10 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name10_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Horizontal Posts Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name11 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name11_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Rich Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name12 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name12_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='TimeLine Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name13 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name13_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Amazing Simple Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name14 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name14_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='News Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name15 WHERE RW_VS_ID=%s", $RW_VS_ID));
			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name15_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));
		}
		$array[]=$Rich_Web_Effect;
		$array[]=$Rich_Web_Effect_Loading;
		print json_encode($array);
		die();
	}

	add_action( 'wp_ajax_rich_web_VS_Copy_Option', 'rich_web_VS_Copy_Option_Callback' );
	add_action( 'wp_ajax_nopriv_rich_web_VS_Copy_Option', 'rich_web_VS_Copy_Option_Callback' );

	function rich_web_VS_Copy_Option_Callback()
	{
		$RW_VS_ID = sanitize_text_field($_POST['foobar']);

		global $wpdb;
		$table_name4  = $wpdb->prefix . "rich_web_video_slider_effects_data";
		$table_name5  = $wpdb->prefix . "rich_web_vs_effect_1";
		$table_name6  = $wpdb->prefix . "rich_web_vs_effect_2";
		$table_name7  = $wpdb->prefix . "rich_web_vs_effect_3";
		$table_name8  = $wpdb->prefix . "rich_web_vs_effect_4";
		$table_name9  = $wpdb->prefix . "rich_web_vs_effect_5";
		$table_name10 = $wpdb->prefix . "rich_web_vs_effect_6";
		$table_name11 = $wpdb->prefix . "rich_web_vs_effect_7";
		$table_name12 = $wpdb->prefix . "rich_web_vs_effect_8";
		$table_name13 = $wpdb->prefix . "rich_web_vs_effect_9";
		$table_name14 = $wpdb->prefix . "rich_web_vs_effect_10";
		$table_name15 = $wpdb->prefix . "rich_web_vs_effect_11";
		$table_name5_Loader  = $wpdb->prefix . "rich_web_vs_effect_1_loader";
		$table_name6_Loader  = $wpdb->prefix . "rich_web_vs_effect_2_loader";
		$table_name7_Loader  = $wpdb->prefix . "rich_web_vs_effect_3_loader";
		$table_name8_Loader  = $wpdb->prefix . "rich_web_vs_effect_4_loader";
		$table_name9_Loader  = $wpdb->prefix . "rich_web_vs_effect_5_loader";
		$table_name10_Loader  = $wpdb->prefix . "rich_web_vs_effect_6_loader";
		$table_name11_Loader  = $wpdb->prefix . "rich_web_vs_effect_7_loader";
		$table_name12_Loader  = $wpdb->prefix . "rich_web_vs_effect_8_loader";
		$table_name13_Loader  = $wpdb->prefix . "rich_web_vs_effect_9_loader";
		$table_name14_Loader  = $wpdb->prefix . "rich_web_vs_effect_10_loader";
		$table_name15_Loader  = $wpdb->prefix . "rich_web_vs_effect_11_loader";


		$Rich_Web_Effects=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name4 WHERE id=%d", $RW_VS_ID));
		$Rich_Web_VS_Opt_Name = $Rich_Web_Effects[0]->slider_vid_name;
		for ($i=1; $i < 100; $i++) { 
			$Rich_Web_VS_New_Opt_Name = $Rich_Web_VS_Opt_Name.' '.$i;
			$Check_RW_VS_Opt_Name =	 $wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name4 WHERE slider_vid_name = %s", $Rich_Web_VS_New_Opt_Name));
			if(count($Check_RW_VS_Opt_Name) == 0){
				$Rich_Web_Effects[0]->slider_vid_name = $Rich_Web_VS_New_Opt_Name;
				break;
			}
		}

		$wpdb->query($wpdb->prepare("INSERT INTO $table_name4 (id, slider_vid_name, slider_Vid_type) VALUES (%d, %s, %s)", '', $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effects[0]->slider_Vid_type));

		$Rich_Web_VS_ID=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name4 WHERE id > %d order by id desc limit 1", 0));

		if($Rich_Web_Effects[0]->slider_Vid_type=='Content Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name5 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name5 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_VS_CP_CE, Rich_Web_VS_CP_EE, Rich_Web_VS_CP_S, Rich_Web_VS_CP_BlC, Rich_Web_VS_CP_BlR, Rich_Web_VS_CP_AS, Rich_Web_VS_CP_PT, Rich_Web_VS_CP_SS, Rich_Web_VS_CS_AP, Rich_Web_VS_CS_HP, Rich_Web_VS_CS_RS, Rich_Web_VS_CS_BSC, Rich_Web_VS_CP_BW, Rich_Web_VS_CP_BS, Rich_Web_VS_CS_BC, Rich_Web_VS_CP_BR, Rich_Web_VS_CS_CN, Rich_Web_VS_CS_NPB, Rich_Web_VS_CP_NO, Rich_Web_VS_CS_NT, Rich_Web_VS_CP_NT, Rich_Web_VS_CP_AT, Rich_Web_VS_CP_CapS, Rich_Web_VS_CP_CapEs, Rich_Web_VS_CP_CapO, Rich_Web_VS_CP_CapE, Rich_Web_VS_CP_TFS, Rich_Web_VS_CP_TFF, Rich_Web_VS_CS_TBgC, Rich_Web_VS_CS_TC, Rich_Web_VS_CP_DFS, Rich_Web_VS_CP_DFF, Rich_Web_VS_CS_DBgC, Rich_Web_VS_CS_DC, Rich_Web_VS_CP_TiT, Rich_Web_VS_CS_TiBgC, Rich_Web_VS_CS_TiC, Rich_Web_VS_CP_TiO, Rich_Web_VS_CP_TiD, Rich_Web_VS_CP_TiP, Rich_Web_VS_CP_TiS, Rich_Web_VS_CP_TiBS, Rich_Web_VS_CP_TiBC, Rich_Web_VS_CP_TiBSt, Rich_Web_VS_CP_TiPos, Rich_Web_VS_SL_Width, Rich_Web_VS_SL_Height, Rich_Web_VS_TitDesc_Type) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_VS_CP_CE, $Rich_Web_Effect[0]->Rich_Web_VS_CP_EE, $Rich_Web_Effect[0]->Rich_Web_VS_CP_S, $Rich_Web_Effect[0]->Rich_Web_VS_CP_BlC, $Rich_Web_Effect[0]->Rich_Web_VS_CP_BlR, $Rich_Web_Effect[0]->Rich_Web_VS_CP_AS, $Rich_Web_Effect[0]->Rich_Web_VS_CP_PT, $Rich_Web_Effect[0]->Rich_Web_VS_CP_SS, $Rich_Web_Effect[0]->Rich_Web_VS_CS_AP, $Rich_Web_Effect[0]->Rich_Web_VS_CS_HP, $Rich_Web_Effect[0]->Rich_Web_VS_CS_RS, $Rich_Web_Effect[0]->Rich_Web_VS_CS_BSC, $Rich_Web_Effect[0]->Rich_Web_VS_CP_BW, $Rich_Web_Effect[0]->Rich_Web_VS_CP_BS, $Rich_Web_Effect[0]->Rich_Web_VS_CS_BC, $Rich_Web_Effect[0]->Rich_Web_VS_CP_BR, $Rich_Web_Effect[0]->Rich_Web_VS_CS_CN, $Rich_Web_Effect[0]->Rich_Web_VS_CS_NPB, $Rich_Web_Effect[0]->Rich_Web_VS_CP_NO, $Rich_Web_Effect[0]->Rich_Web_VS_CS_NT, $Rich_Web_Effect[0]->Rich_Web_VS_CP_NT, $Rich_Web_Effect[0]->Rich_Web_VS_CP_AT, $Rich_Web_Effect[0]->Rich_Web_VS_CP_CapS, $Rich_Web_Effect[0]->Rich_Web_VS_CP_CapEs, $Rich_Web_Effect[0]->Rich_Web_VS_CP_CapO, $Rich_Web_Effect[0]->Rich_Web_VS_CP_CapE, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TFS, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TFF, $Rich_Web_Effect[0]->Rich_Web_VS_CS_TBgC, $Rich_Web_Effect[0]->Rich_Web_VS_CS_TC, $Rich_Web_Effect[0]->Rich_Web_VS_CP_DFS, $Rich_Web_Effect[0]->Rich_Web_VS_CP_DFF, $Rich_Web_Effect[0]->Rich_Web_VS_CS_DBgC, $Rich_Web_Effect[0]->Rich_Web_VS_CS_DC, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiT, $Rich_Web_Effect[0]->Rich_Web_VS_CS_TiBgC, $Rich_Web_Effect[0]->Rich_Web_VS_CS_TiC, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiO, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiD, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiP, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiS, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiBS, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiBC, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiBSt, $Rich_Web_Effect[0]->Rich_Web_VS_CP_TiPos, $Rich_Web_Effect[0]->Rich_Web_VS_SL_Width, $Rich_Web_Effect[0]->Rich_Web_VS_SL_Height, $Rich_Web_Effect[0]->Rich_Web_VS_TitDesc_Type));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name5_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name5_Loader (id, RW_VS_ID, Rich_Web_VS_ContSl_L_Show, Rich_Web_VS_ContSl_LT_Show, Rich_Web_VS_ContSl_LT, Rich_Web_VS_ContSl_L_BgC, Rich_Web_VS_ContSl_L_T, Rich_Web_VS_ContSl_LT_T, Rich_Web_VS_ContSl_LT_FS, Rich_Web_VS_ContSl_LT_FF, Rich_Web_VS_ContSl_LT_C, Rich_Web_VS_ContSl_L_T1_C, Rich_Web_VS_ContSl_L_T2_C, Rich_Web_VS_ContSl_L_T3_C, Rich_Web_VS_ContSl_LT_T2_BC, Rich_Web_VS_ContSl_L_C, Rich_Web_VS_ContSl_LT_T2_AnC, Rich_Web_VS_ContSl_LT_T3_BgC, Rich_Web_VS_ContSl_L_S, Rich_Web_VS_ContSl_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_VS_ContSl_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Slick Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name6 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name6 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_VS_SS_ED, Rich_Web_VS_SS_PT, Rich_Web_VS_SS_AP, Rich_Web_VS_SS_Eff, Rich_Web_VS_SS_W, Rich_Web_VS_SS_H, Rich_Web_VS_SS_BW, Rich_Web_VS_SS_BS, Rich_Web_VS_SS_BC, Rich_Web_VS_SS_TShow, Rich_Web_VS_SS_TFS, Rich_Web_VS_SS_TFF, Rich_Web_VS_SS_TC, Rich_Web_VS_SS_TBgC, Rich_Web_VS_SS_TPos, Rich_Web_VS_SS_NShow, Rich_Web_VS_SS_NC, Rich_Web_VS_SS_NBgC, Rich_Web_VS_SS_NS, Rich_Web_VS_SS_NPos, Rich_Web_VS_SS_PagShow, Rich_Web_VS_SS_PagW, Rich_Web_VS_SS_PagH, Rich_Web_VS_SS_PagPB, Rich_Web_VS_SS_PagBgC, Rich_Web_VS_SS_PagBW, Rich_Web_VS_SS_PagBS, Rich_Web_VS_SS_PagBC, Rich_Web_VS_SS_PagBR, Rich_Web_VS_SS_PagHC, Rich_Web_VS_SS_PagCC, Rich_Web_VS_SS_PagPos, Rich_Web_VS_SS_PIBgC, Rich_Web_VS_SS_PIC, Rich_Web_VS_SS_PIHBgC, Rich_Web_VS_SS_PIHC, Rich_Web_VS_SS_CIBgC, Rich_Web_VS_SS_CIC, Rich_Web_VS_SS_CIHBgC, Rich_Web_VS_SS_CIHC) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_VS_SS_ED, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PT, $Rich_Web_Effect[0]->Rich_Web_VS_SS_AP, $Rich_Web_Effect[0]->Rich_Web_VS_SS_Eff, $Rich_Web_Effect[0]->Rich_Web_VS_SS_W, $Rich_Web_Effect[0]->Rich_Web_VS_SS_H, $Rich_Web_Effect[0]->Rich_Web_VS_SS_BW, $Rich_Web_Effect[0]->Rich_Web_VS_SS_BS, $Rich_Web_Effect[0]->Rich_Web_VS_SS_BC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_TShow, $Rich_Web_Effect[0]->Rich_Web_VS_SS_TFS, $Rich_Web_Effect[0]->Rich_Web_VS_SS_TFF, $Rich_Web_Effect[0]->Rich_Web_VS_SS_TC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_TBgC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_TPos, $Rich_Web_Effect[0]->Rich_Web_VS_SS_NShow, $Rich_Web_Effect[0]->Rich_Web_VS_SS_NC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_NBgC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_NS, $Rich_Web_Effect[0]->Rich_Web_VS_SS_NPos, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagShow, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagW, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagH, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagPB, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagBgC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagBW, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagBS, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagBC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagBR, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagHC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagCC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PagPos, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PIBgC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PIC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PIHBgC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_PIHC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_CIBgC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_CIC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_CIHBgC, $Rich_Web_Effect[0]->Rich_Web_VS_SS_CIHC));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name6_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name6_Loader (id, RW_VS_ID, Rich_Web_SlickSl_L_Show, Rich_Web_SlickSl_LT_Show, Rich_Web_SlickSl_LT, Rich_Web_SlickSl_L_BgC, Rich_Web_SlickSl_L_T, Rich_Web_SlickSl_LT_T, Rich_Web_SlickSl_LT_FS, Rich_Web_SlickSl_LT_FF, Rich_Web_SlickSl_LT_C, Rich_Web_SlickSl_L_T1_C, Rich_Web_SlickSl_L_T2_C, Rich_Web_SlickSl_L_T3_C, Rich_Web_SlickSl_LT_T2_BC, Rich_Web_SlickSl_L_C, Rich_Web_SlickSl_LT_T2_AnC, Rich_Web_SlickSl_LT_T3_BgC, Rich_Web_SlickSl_L_S, Rich_Web_SlickSl_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_SlickSl_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Thumbnails Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name7 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name7 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_VS_TS_W, Rich_Web_VS_TS_H, Rich_Web_VS_TS_BW, Rich_Web_VS_TS_BS, Rich_Web_VS_TS_BC, Rich_Web_VS_TS_BoxShShow, Rich_Web_VS_TS_BoxShType, Rich_Web_VS_TS_BoxSh, Rich_Web_VS_TS_BoxShC, Rich_Web_VS_TS_IBgC, Rich_Web_VS_TS_IBW, Rich_Web_VS_TS_IBS, Rich_Web_VS_TS_IBC, Rich_Web_VS_TS_IBR, Rich_Web_VS_TS_TPos, Rich_Web_VS_TS_TBgC, Rich_Web_VS_TS_TBW, Rich_Web_VS_TS_TBS, Rich_Web_VS_TS_TBC, Rich_Web_VS_TS_TIH, Rich_Web_VS_TS_TIPB, Rich_Web_VS_TS_TIBW, Rich_Web_VS_TS_TIBS, Rich_Web_VS_TS_TIBC, Rich_Web_VS_TS_TIBR, Rich_Web_VS_TS_TIBoxShShow, Rich_Web_VS_TS_TIBoxShType, Rich_Web_VS_TS_TIBoxSh, Rich_Web_VS_TS_TIBoxShC, Rich_Web_VS_TS_TICBC, Rich_Web_VS_TS_TICBS, Rich_Web_VS_TS_TICBoxShC, Rich_Web_VS_TS_TIHBC, Rich_Web_VS_TS_TIHBS, Rich_Web_VS_TS_TIHBoxShC, Rich_Web_VS_TS_CS, Rich_Web_VS_TS_PT, Rich_Web_VS_TS_AP, Rich_Web_VS_TS_PIBgC, Rich_Web_VS_TS_PIC, Rich_Web_VS_TS_PIHBgC, Rich_Web_VS_TS_PIHC) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_VS_TS_W, $Rich_Web_Effect[0]->Rich_Web_VS_TS_H, $Rich_Web_Effect[0]->Rich_Web_VS_TS_BW, $Rich_Web_Effect[0]->Rich_Web_VS_TS_BS, $Rich_Web_Effect[0]->Rich_Web_VS_TS_BC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_BoxShShow, $Rich_Web_Effect[0]->Rich_Web_VS_TS_BoxShType, $Rich_Web_Effect[0]->Rich_Web_VS_TS_BoxSh, $Rich_Web_Effect[0]->Rich_Web_VS_TS_BoxShC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_IBgC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_IBW, $Rich_Web_Effect[0]->Rich_Web_VS_TS_IBS, $Rich_Web_Effect[0]->Rich_Web_VS_TS_IBC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_IBR, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TPos, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TBgC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TBW, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TBS, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TBC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIH, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIPB, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIBW, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIBS, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIBC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIBR, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIBoxShShow, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIBoxShType, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIBoxSh, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIBoxShC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TICBC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TICBS, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TICBoxShC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIHBC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIHBS, $Rich_Web_Effect[0]->Rich_Web_VS_TS_TIHBoxShC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_CS, $Rich_Web_Effect[0]->Rich_Web_VS_TS_PT, $Rich_Web_Effect[0]->Rich_Web_VS_TS_AP, $Rich_Web_Effect[0]->Rich_Web_VS_TS_PIBgC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_PIC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_PIHBgC, $Rich_Web_Effect[0]->Rich_Web_VS_TS_PIHC));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name7_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name7_Loader (id, RW_VS_ID, Rich_Web_ThumbSl_L_Show, Rich_Web_ThumbSl_LT_Show, Rich_Web_ThumbSl_LT, Rich_Web_ThumbSl_L_BgC, Rich_Web_ThumbSl_L_T, Rich_Web_ThumbSl_LT_T, Rich_Web_ThumbSl_LT_FS, Rich_Web_ThumbSl_LT_FF, Rich_Web_ThumbSl_LT_C, Rich_Web_ThumbSl_L_T1_C, Rich_Web_ThumbSl_L_T2_C, Rich_Web_ThumbSl_L_T3_C, Rich_Web_ThumbSl_LT_T2_BC, Rich_Web_ThumbSl_L_C, Rich_Web_ThumbSl_LT_T2_AnC, Rich_Web_ThumbSl_LT_T3_BgC, Rich_Web_ThumbSl_L_S, Rich_Web_ThumbSl_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_ThumbSl_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Video Carousel/Content Popup')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name8 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name8 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_VC_Car_Bg_Color, Rich_Web_VC_Car_Border_Width, Rich_Web_VC_Car_Border_Style, Rich_Web_VC_Car_Border_Color, Rich_Web_VC_Car_Box_Shadow, Rich_Web_VC_Car_Shadow_Color, Rich_Web_VC_Car_Count_Imgs, Rich_Web_VC_Car_Imgs_Hover_Type, Rich_Web_VC_Car_PBImgs, Rich_Web_VC_Car_Icons_Type, Rich_Web_VC_Car_Icons_Size, Rich_Web_VC_Overlay_Bg_Color, Rich_Web_VC_Popup_Bg_Color, Rich_Web_VC_Popup_Border_Width, Rich_Web_VC_Popup_Border_Style, Rich_Web_VC_Popup_Border_Color, Rich_Web_VC_Popup_Box_Shadow, Rich_Web_VC_Popup_Shadow_Color, Rich_Web_VC_Title_Font_Size, Rich_Web_VC_Title_Font_Family, Rich_Web_VC_Title_Color, Rich_Web_VC_Title_Text_Align, Rich_Web_VC_Desc_Bg_Color, Rich_Web_VC_Desc_Font_Size, Rich_Web_VC_Desc_Font_Family, Rich_Web_VC_Desc_Color, Rich_Web_VC_Desc_Text_Align, Rich_Web_VC_Link_Font_Size, Rich_Web_VC_Link_Font_Family, Rich_Web_VC_Link_Color, Rich_Web_VC_Link_Bg_Color, Rich_Web_VC_Link_Border_Color, Rich_Web_VC_Link_Border_Width, Rich_Web_VC_Link_Border_Style, Rich_Web_VC_Link_Hov_Bg_Color, Rich_Web_VC_Link_Hov_Color, Rich_Web_VC_Link_Hov_Border_Color, Rich_Web_VC_Popup_Icons_Size, Rich_Web_VC_Popup_Icons_Color, Rich_Web_VC_Popup_Icons_Type, Rich_Web_VC_Link_Text, Rich_Web_VC_Link_Border_Radius, 	Rich_Web_VC_Car_Auto_Play) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Bg_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Border_Width, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Border_Style, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Border_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Box_Shadow, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Shadow_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Count_Imgs, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Imgs_Hover_Type, $Rich_Web_Effect[0]->Rich_Web_VC_Car_PBImgs, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Icons_Type, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Icons_Size, $Rich_Web_Effect[0]->Rich_Web_VC_Overlay_Bg_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Bg_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Border_Width, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Border_Style, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Border_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Box_Shadow, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Shadow_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Title_Font_Size, $Rich_Web_Effect[0]->Rich_Web_VC_Title_Font_Family, $Rich_Web_Effect[0]->Rich_Web_VC_Title_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Title_Text_Align, $Rich_Web_Effect[0]->Rich_Web_VC_Desc_Bg_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Desc_Font_Size, $Rich_Web_Effect[0]->Rich_Web_VC_Desc_Font_Family, $Rich_Web_Effect[0]->Rich_Web_VC_Desc_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Desc_Text_Align, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Font_Size, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Font_Family, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Bg_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Border_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Border_Width, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Border_Style, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Hov_Bg_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Hov_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Hov_Border_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Icons_Size, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Icons_Color, $Rich_Web_Effect[0]->Rich_Web_VC_Popup_Icons_Type, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Text, $Rich_Web_Effect[0]->Rich_Web_VC_Link_Border_Radius, $Rich_Web_Effect[0]->Rich_Web_VC_Car_Auto_Play));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name6_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name8_Loader (id, RW_VS_ID, Rich_Web_VCCP_L_Show, Rich_Web_VCCP_LT_Show, Rich_Web_VCCP_LT, Rich_Web_VCCP_L_BgC, Rich_Web_VCCP_L_T, Rich_Web_VCCP_LT_T, Rich_Web_VCCP_LT_FS, Rich_Web_VCCP_LT_FF, Rich_Web_VCCP_LT_C, Rich_Web_VCCP_L_T1_C, Rich_Web_VCCP_L_T2_C, Rich_Web_VCCP_L_T3_C, Rich_Web_VCCP_LT_T2_BC, Rich_Web_VCCP_L_C, Rich_Web_VCCP_LT_T2_AnC, Rich_Web_VCCP_LT_T3_BgC, Rich_Web_VCCP_L_S, Rich_Web_VCCP_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_VCCP_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Simple Video Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name9 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name9 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_SVS_W, Rich_Web_SVS_PT, Rich_Web_SVS_CS, Rich_Web_SVS_BW, Rich_Web_SVS_BS, Rich_Web_SVS_BC, Rich_Web_SVS_BoxShShow, Rich_Web_SVS_BoxShType, Rich_Web_SVS_BoxSh, Rich_Web_SVS_BoxShC, Rich_Web_SVS_Nav_Show, Rich_Web_SVS_Nav_W, Rich_Web_SVS_Nav_H, Rich_Web_SVS_Nav_BW, Rich_Web_SVS_Nav_BS, Rich_Web_SVS_Nav_BC, Rich_Web_SVS_Nav_BR, Rich_Web_SVS_Nav_PB, Rich_Web_SVS_Nav_C, Rich_Web_SVS_Nav_CC, Rich_Web_SVS_Nav_HC, Rich_Web_SVS_Nav_Pos, Rich_Web_SVS_T_Show, Rich_Web_SVS_TBgC, Rich_Web_SVS_TC, Rich_Web_SVS_TFS, Rich_Web_SVS_TFF, Rich_Web_SVS_D_Show, Rich_Web_SVS_DC, Rich_Web_SVS_DFS, Rich_Web_SVS_DFF, Rich_Web_SVS_LC, Rich_Web_SVS_LFS, Rich_Web_SVS_LFF, Rich_Web_SVS_LHC, Rich_Web_SVS_Arr_Show, Rich_Web_SVS_Arr_Type, Rich_Web_SVS_Arr_S, Rich_Web_SVS_Arr_C, Rich_Web_SVS_Arr_BgC, Rich_Web_SVS_Arr_BW, Rich_Web_SVS_Arr_BS, Rich_Web_SVS_Arr_BC, Rich_Web_SVS_Arr_BR, Rich_Web_SVS_PIC, Rich_Web_SVS_PIBgC, Rich_Web_SVS_PIBR, Rich_Web_SVS_PIHC, Rich_Web_SVS_PIHBgC, Rich_Web_SVS_Eff, Rich_Web_SVS_LText, Rich_Web_SVS_AP) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_SVS_W, $Rich_Web_Effect[0]->Rich_Web_SVS_PT, $Rich_Web_Effect[0]->Rich_Web_SVS_CS, $Rich_Web_Effect[0]->Rich_Web_SVS_BW, $Rich_Web_Effect[0]->Rich_Web_SVS_BS, $Rich_Web_Effect[0]->Rich_Web_SVS_BC, $Rich_Web_Effect[0]->Rich_Web_SVS_BoxShShow, $Rich_Web_Effect[0]->Rich_Web_SVS_BoxShType, $Rich_Web_Effect[0]->Rich_Web_SVS_BoxSh, $Rich_Web_Effect[0]->Rich_Web_SVS_BoxShC, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_Show, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_W, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_H, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_BW, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_BS, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_BC, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_BR, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_PB, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_C, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_CC, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_HC, $Rich_Web_Effect[0]->Rich_Web_SVS_Nav_Pos, $Rich_Web_Effect[0]->Rich_Web_SVS_T_Show, $Rich_Web_Effect[0]->Rich_Web_SVS_TBgC, $Rich_Web_Effect[0]->Rich_Web_SVS_TC, $Rich_Web_Effect[0]->Rich_Web_SVS_TFS, $Rich_Web_Effect[0]->Rich_Web_SVS_TFF, $Rich_Web_Effect[0]->Rich_Web_SVS_D_Show, $Rich_Web_Effect[0]->Rich_Web_SVS_DC, $Rich_Web_Effect[0]->Rich_Web_SVS_DFS, $Rich_Web_Effect[0]->Rich_Web_SVS_DFF, $Rich_Web_Effect[0]->Rich_Web_SVS_LC, $Rich_Web_Effect[0]->Rich_Web_SVS_LFS, $Rich_Web_Effect[0]->Rich_Web_SVS_LFF, $Rich_Web_Effect[0]->Rich_Web_SVS_LHC, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_Show, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_Type, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_S, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_C, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_BgC, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_BW, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_BS, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_BC, $Rich_Web_Effect[0]->Rich_Web_SVS_Arr_BR, $Rich_Web_Effect[0]->Rich_Web_SVS_PIC, $Rich_Web_Effect[0]->Rich_Web_SVS_PIBgC, $Rich_Web_Effect[0]->Rich_Web_SVS_PIBR, $Rich_Web_Effect[0]->Rich_Web_SVS_PIHC, $Rich_Web_Effect[0]->Rich_Web_SVS_PIHBgC, $Rich_Web_Effect[0]->Rich_Web_SVS_Eff, $Rich_Web_Effect[0]->Rich_Web_SVS_LText, $Rich_Web_Effect[0]->Rich_Web_SVS_AP));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name9_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name9_Loader (id, RW_VS_ID, Rich_Web_SimpleVS_L_Show, Rich_Web_SimpleVS_LT_Show, Rich_Web_SimpleVS_LT, Rich_Web_SimpleVS_L_BgC, Rich_Web_SimpleVS_L_T, Rich_Web_SimpleVS_LT_T, Rich_Web_SimpleVS_LT_FS, Rich_Web_SimpleVS_LT_FF, Rich_Web_SimpleVS_LT_C, Rich_Web_SimpleVS_L_T1_C, Rich_Web_SimpleVS_L_T2_C, Rich_Web_SimpleVS_L_T3_C, Rich_Web_SimpleVS_LT_T2_BC, Rich_Web_SimpleVS_L_C, Rich_Web_SimpleVS_LT_T2_AnC, Rich_Web_SimpleVS_LT_T3_BgC, Rich_Web_SimpleVS_L_S, Rich_Web_SimpleVS_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_SimpleVS_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Video Slider/Vertical Thumbnails')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name10 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name10 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_VTVS_AP, Rich_Web_VTVS_APS, Rich_Web_VTVS_APEff, Rich_Web_VTVS_CS, Rich_Web_VTVS_PT, Rich_Web_VTVS_ArrSt, Rich_Web_VTVS_BgC, Rich_Web_VTVS_H, Rich_Web_VTVS_BW, Rich_Web_VTVS_BS, Rich_Web_VTVS_BC, Rich_Web_VTVS_BoxShShow, Rich_Web_VTVS_BoxShType, Rich_Web_VTVS_BoxSh, Rich_Web_VTVS_BoxShC, Rich_Web_VTVS_TShow, Rich_Web_VTVS_TFS, Rich_Web_VTVS_TFF, Rich_Web_VTVS_TC, Rich_Web_VTVS_TBgC, Rich_Web_VTVS_TPos, Rich_Web_VTVS_Th_BW, Rich_Web_VTVS_Th_BS, Rich_Web_VTVS_Th_BC, Rich_Web_VTVS_Th_BR, Rich_Web_VTVS_Th_HBC, Rich_Web_VTVS_LC, Rich_Web_VTVS_LBgC, Rich_Web_VTVS_LFS, Rich_Web_VTVS_LHC, Rich_Web_VTVS_LHBgC, Rich_Web_VTVS_LPos, Rich_Web_VTVS_LType, Rich_Web_VTVS_PC, Rich_Web_VTVS_PBgC, Rich_Web_VTVS_PFS, Rich_Web_VTVS_PHC, Rich_Web_VTVS_PHBgC, Rich_Web_VTVS_PPos, Rich_Web_VTVS_PType, Rich_Web_VTVS_ArrShow, Rich_Web_VTVS_ArrType, Rich_Web_VTVS_ArrFS, Rich_Web_VTVS_ArrPos, Rich_Web_VTVS_ArrC) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_VTVS_AP, $Rich_Web_Effect[0]->Rich_Web_VTVS_APS, $Rich_Web_Effect[0]->Rich_Web_VTVS_APEff, $Rich_Web_Effect[0]->Rich_Web_VTVS_CS, $Rich_Web_Effect[0]->Rich_Web_VTVS_PT, $Rich_Web_Effect[0]->Rich_Web_VTVS_ArrSt, $Rich_Web_Effect[0]->Rich_Web_VTVS_BgC, $Rich_Web_Effect[0]->Rich_Web_VTVS_H, $Rich_Web_Effect[0]->Rich_Web_VTVS_BW, $Rich_Web_Effect[0]->Rich_Web_VTVS_BS, $Rich_Web_Effect[0]->Rich_Web_VTVS_BC, $Rich_Web_Effect[0]->Rich_Web_VTVS_BoxShShow, $Rich_Web_Effect[0]->Rich_Web_VTVS_BoxShType, $Rich_Web_Effect[0]->Rich_Web_VTVS_BoxSh, $Rich_Web_Effect[0]->Rich_Web_VTVS_BoxShC, $Rich_Web_Effect[0]->Rich_Web_VTVS_TShow, $Rich_Web_Effect[0]->Rich_Web_VTVS_TFS, $Rich_Web_Effect[0]->Rich_Web_VTVS_TFF, $Rich_Web_Effect[0]->Rich_Web_VTVS_TC, $Rich_Web_Effect[0]->Rich_Web_VTVS_TBgC, $Rich_Web_Effect[0]->Rich_Web_VTVS_TPos, $Rich_Web_Effect[0]->Rich_Web_VTVS_Th_BW, $Rich_Web_Effect[0]->Rich_Web_VTVS_Th_BS, $Rich_Web_Effect[0]->Rich_Web_VTVS_Th_BC, $Rich_Web_Effect[0]->Rich_Web_VTVS_Th_BR, $Rich_Web_Effect[0]->Rich_Web_VTVS_Th_HBC, $Rich_Web_Effect[0]->Rich_Web_VTVS_LC, $Rich_Web_Effect[0]->Rich_Web_VTVS_LBgC, $Rich_Web_Effect[0]->Rich_Web_VTVS_LFS, $Rich_Web_Effect[0]->Rich_Web_VTVS_LHC, $Rich_Web_Effect[0]->Rich_Web_VTVS_LHBgC, $Rich_Web_Effect[0]->Rich_Web_VTVS_LPos, $Rich_Web_Effect[0]->Rich_Web_VTVS_LType, $Rich_Web_Effect[0]->Rich_Web_VTVS_PC, $Rich_Web_Effect[0]->Rich_Web_VTVS_PBgC, $Rich_Web_Effect[0]->Rich_Web_VTVS_PFS, $Rich_Web_Effect[0]->Rich_Web_VTVS_PHC, $Rich_Web_Effect[0]->Rich_Web_VTVS_PHBgC, $Rich_Web_Effect[0]->Rich_Web_VTVS_PPos, $Rich_Web_Effect[0]->Rich_Web_VTVS_PType, $Rich_Web_Effect[0]->Rich_Web_VTVS_ArrShow, $Rich_Web_Effect[0]->Rich_Web_VTVS_ArrType, $Rich_Web_Effect[0]->Rich_Web_VTVS_ArrFS, $Rich_Web_Effect[0]->Rich_Web_VTVS_ArrPos, $Rich_Web_Effect[0]->Rich_Web_VTVS_ArrC));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name10_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name10_Loader (id, RW_VS_ID, Rich_Web_VSVT_L_Show, Rich_Web_VSVT_LT_Show, Rich_Web_VSVT_LT, Rich_Web_VSVT_L_BgC, Rich_Web_VSVT_L_T, Rich_Web_VSVT_LT_T, Rich_Web_VSVT_LT_FS, Rich_Web_VSVT_LT_FF, Rich_Web_VSVT_LT_C, Rich_Web_VSVT_L_T1_C, Rich_Web_VSVT_L_T2_C, Rich_Web_VSVT_L_T3_C, Rich_Web_VSVT_LT_T2_BC, Rich_Web_VSVT_L_C, Rich_Web_VSVT_LT_T2_AnC, Rich_Web_VSVT_LT_T3_BgC, Rich_Web_VSVT_L_S, Rich_Web_VSVT_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_VSVT_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Horizontal Posts Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name11 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name11 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_VS_HPS_Loop, Rich_Web_VS_HPS_Cols, Rich_Web_VS_HPS_Speed, Rich_Web_VS_HPS_AP, Rich_Web_VS_HPS_EH, Rich_Web_VS_HPS_PB, Rich_Web_VS_HPS_Car, Rich_Web_VS_HPS_NP_Show, Rich_Web_VS_HPS_NP_NText, Rich_Web_VS_HPS_NP_PText, Rich_Web_VS_HPS_NP_C, Rich_Web_VS_HPS_NP_BgC, Rich_Web_VS_HPS_NP_FS, Rich_Web_VS_HPS_NP_FF, Rich_Web_VS_HPS_NP_BW, Rich_Web_VS_HPS_NP_BS, Rich_Web_VS_HPS_NP_BC, Rich_Web_VS_HPS_NP_BR, Rich_Web_VS_HPS_NP_HC, Rich_Web_VS_HPS_NP_HBgC, Rich_Web_VS_HPS_Cols_BgC, Rich_Web_VS_HPS_Cols_BoxShC, Rich_Web_VS_HPS_Cols_VSEff, Rich_Web_VS_HPS_Cols_StShC, Rich_Web_VS_HPS_Cols_VHEff, Rich_Web_VS_HPS_Cols_HShC, Rich_Web_VS_HPS_TC, Rich_Web_VS_HPS_TFS, Rich_Web_VS_HPS_TFF, Rich_Web_VS_HPS_DShow, Rich_Web_VS_HPS_DC, Rich_Web_VS_HPS_DFS, Rich_Web_VS_HPS_DFF, Rich_Web_VS_HPS_LText, Rich_Web_VS_HPS_LC, Rich_Web_VS_HPS_LFS, Rich_Web_VS_HPS_LFF, Rich_Web_VS_HPS_LHC, Rich_Web_VS_HPS_PText, Rich_Web_VS_HPS_PBgC, Rich_Web_VS_HPS_PC, Rich_Web_VS_HPS_PFS, Rich_Web_VS_HPS_PFF, Rich_Web_VS_HPS_PHC, Rich_Web_VS_HPS_PHBgC, Rich_Web_VS_HPS_Pop_OvC, Rich_Web_VS_HPS_Pop_BW, Rich_Web_VS_HPS_Pop_BS, Rich_Web_VS_HPS_Pop_BC, Rich_Web_VS_HPS_Pop_BoxShShow, Rich_Web_VS_HPS_Pop_BoxShType, Rich_Web_VS_HPS_Pop_BoxSh, Rich_Web_VS_HPS_Pop_BoxShC, Rich_Web_VS_HPS_Pop_CIType, Rich_Web_VS_HPS_Pop_CIS, Rich_Web_VS_HPS_Pop_CIC) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Loop, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Cols, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Speed, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_AP, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_EH, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_PB, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Car, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_Show, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_NText, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_PText, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_C, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_BgC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_FS, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_FF, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_BW, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_BS, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_BC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_BR, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_HC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_NP_HBgC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Cols_BgC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Cols_BoxShC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Cols_VSEff, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Cols_StShC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Cols_VHEff, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Cols_HShC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_TC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_TFS, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_TFF, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_DShow, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_DC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_DFS, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_DFF, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_LText, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_LC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_LFS, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_LFF, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_LHC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_PText, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_PBgC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_PC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_PFS, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_PFF, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_PHC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_PHBgC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_OvC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_BW, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_BS, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_BC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_BoxShShow, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_BoxShType, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_BoxSh, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_BoxShC, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_CIType, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_CIS, $Rich_Web_Effect[0]->Rich_Web_VS_HPS_Pop_CIC));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name11_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name11_Loader (id, RW_VS_ID, Rich_Web_HSL_L_Show, Rich_Web_HSL_LT_Show, Rich_Web_HSL_LT, Rich_Web_HSL_L_BgC, Rich_Web_HSL_L_T, Rich_Web_HSL_LT_T, Rich_Web_HSL_LT_FS, Rich_Web_HSL_LT_FF, Rich_Web_HSL_LT_C, Rich_Web_HSL_L_T1_C, Rich_Web_HSL_L_T2_C, Rich_Web_HSL_L_T3_C, Rich_Web_HSL_LT_T2_BC, Rich_Web_HSL_L_C, Rich_Web_HSL_LT_T2_AnC, Rich_Web_HSL_LT_T3_BgC, Rich_Web_HSL_L_S, Rich_Web_HSL_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_HSL_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Rich Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name12 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name12 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_RVVS_Sh, Rich_Web_RVVS_ShT, Rich_Web_RVVS_ShC, Rich_Web_RVVS_NI_BW, Rich_Web_RVVS_NI_BC, Rich_Web_RVVS_NI_BgC, Rich_Web_RVVS_NI_HBgC,Rich_Web_RVVS_NI_HBC, Rich_Web_RVVS_NI_CBgC, Rich_Web_RVVS_NI_CBC, Rich_Web_RVVS_NT_FF, Rich_Web_RVVS_NT_C, Rich_Web_RVVS_ND_FF, Rich_Web_RVVS_ND_C, Rich_Web_RVVS_NImg_BW, Rich_Web_RVVS_NImg_BR, Rich_Web_RVVS_NImg_BSh, Rich_Web_RVVS_NImg_ShC, Rich_Web_RVVS_NImg_ShT, Rich_Web_RVVS_NScroll_BgC, Rich_Web_RVVS_NScroll_HBgC, Rich_Web_RVVS_NScroll_C, Rich_Web_RVVS_IT_FF, Rich_Web_RVVS_IT_C, Rich_Web_RVVS_ID_FF, Rich_Web_RVVS_ID_C, Rich_Web_RVVS_PlIc_FS, Rich_Web_RVVS_PlIc_C, Rich_Web_RVVS_PlIc_BgC, Rich_Web_RVVS_PlIc_HBgC, Rich_Web_RVVS_DelIc_C, Rich_Web_RVVS_DelIc_T, Rich_Web_RVVS_DelIc_FS, Rich_Web_RVVS_DelIc_BgC, Rich_Web_RVVS_DelIc_HBgC) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_RVVS_Sh, $Rich_Web_Effect[0]->Rich_Web_RVVS_ShT, $Rich_Web_Effect[0]->Rich_Web_RVVS_ShC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NI_BW, $Rich_Web_Effect[0]->Rich_Web_RVVS_NI_BC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NI_BgC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NI_HBgC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NI_HBC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NI_CBgC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NI_CBC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NT_FF, $Rich_Web_Effect[0]->Rich_Web_RVVS_NT_C, $Rich_Web_Effect[0]->Rich_Web_RVVS_ND_FF, $Rich_Web_Effect[0]->Rich_Web_RVVS_ND_C, $Rich_Web_Effect[0]->Rich_Web_RVVS_NImg_BW, $Rich_Web_Effect[0]->Rich_Web_RVVS_NImg_BR, $Rich_Web_Effect[0]->Rich_Web_RVVS_NImg_BSh, $Rich_Web_Effect[0]->Rich_Web_RVVS_NImg_ShC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NImg_ShT, $Rich_Web_Effect[0]->Rich_Web_RVVS_NScroll_BgC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NScroll_HBgC, $Rich_Web_Effect[0]->Rich_Web_RVVS_NScroll_C, $Rich_Web_Effect[0]->Rich_Web_RVVS_IT_FF, $Rich_Web_Effect[0]->Rich_Web_RVVS_IT_C, $Rich_Web_Effect[0]->Rich_Web_RVVS_ID_FF, $Rich_Web_Effect[0]->Rich_Web_RVVS_ID_C, $Rich_Web_Effect[0]->Rich_Web_RVVS_PlIc_FS, $Rich_Web_Effect[0]->Rich_Web_RVVS_PlIc_C, $Rich_Web_Effect[0]->Rich_Web_RVVS_PlIc_BgC, $Rich_Web_Effect[0]->Rich_Web_RVVS_PlIc_HBgC, $Rich_Web_Effect[0]->Rich_Web_RVVS_DelIc_C, $Rich_Web_Effect[0]->Rich_Web_RVVS_DelIc_T, $Rich_Web_Effect[0]->Rich_Web_RVVS_DelIc_FS, $Rich_Web_Effect[0]->Rich_Web_RVVS_DelIc_BgC, $Rich_Web_Effect[0]->Rich_Web_RVVS_DelIc_HBgC));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name12_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name12_Loader (id, RW_VS_ID, Rich_Web_RichSl_L_Show, Rich_Web_RichSl_LT_Show, Rich_Web_RichSl_LT, Rich_Web_RichSl_L_BgC, Rich_Web_RichSl_L_T, Rich_Web_RichSl_LT_T, Rich_Web_RichSl_LT_FS, Rich_Web_RichSl_LT_FF, Rich_Web_RichSl_LT_C, Rich_Web_RichSl_L_T1_C, Rich_Web_RichSl_L_T2_C, Rich_Web_RichSl_L_T3_C, Rich_Web_RichSl_LT_T2_BC, Rich_Web_RichSl_L_C, Rich_Web_RichSl_LT_T2_AnC, Rich_Web_RichSl_LT_T3_BgC, Rich_Web_RichSl_L_S, Rich_Web_RichSl_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_RichSl_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='TimeLine Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name13 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name13 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_MS_W, Rich_Web_MS_SSh, Rich_Web_MS_SShChT, Rich_Web_MS_BSh, Rich_Web_MS_ShC, Rich_Web_MS_ShT, Rich_Web_MS_BgC, Rich_Web_MS_Type, Rich_Web_MS_Autoplay, Rich_Web_MS_N_BW, Rich_Web_MS_N_BS, Rich_Web_MS_N_BC, Rich_Web_MS_NI_FS, Rich_Web_MS_NI_FF, Rich_Web_MS_NI_C, Rich_Web_MS_NI_HC, Rich_Web_MS_NI_CC, Rich_Web_MS_NIC_C, Rich_Web_MS_Img_BW, Rich_Web_MS_Img_BS, Rich_Web_MS_Img_BC, Rich_Web_MS_Img_BSh, Rich_Web_MS_Img_ShC, Rich_Web_MS_Img_ShT, Rich_Web_MS_T_FS, Rich_Web_MS_T_FF, Rich_Web_MS_T_C, Rich_Web_MS_T_TA, Rich_Web_MS_T_TSh, Rich_Web_MS_T_TShC, Rich_Web_MS_D_FS, Rich_Web_MS_D_FF, Rich_Web_MS_D_C, Rich_Web_MS_D_TA, Rich_Web_MS_D_TSh, Rich_Web_MS_D_TShC, Rich_Web_MS_Ic_T, Rich_Web_MS_Ic_S, Rich_Web_MS_Ic_C, Rich_Web_MS_startAt, Rich_Web_MS_Sl1EfT, Rich_Web_MS_NI_CCC, Rich_Web_MS_PlIc_T, Rich_Web_MS_PlIc_S, Rich_Web_MS_PlIc_BgC, Rich_Web_MS_PlIc_C, Rich_Web_MS_PlIc_HBgC, Rich_Web_MS_PlIc_HC) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_MS_W, $Rich_Web_Effect[0]->Rich_Web_MS_SSh, $Rich_Web_Effect[0]->Rich_Web_MS_SShChT, $Rich_Web_Effect[0]->Rich_Web_MS_BSh, $Rich_Web_Effect[0]->Rich_Web_MS_ShC, $Rich_Web_Effect[0]->Rich_Web_MS_ShT, $Rich_Web_Effect[0]->Rich_Web_MS_BgC, $Rich_Web_Effect[0]->Rich_Web_MS_Type, $Rich_Web_Effect[0]->Rich_Web_MS_Autoplay, $Rich_Web_Effect[0]->Rich_Web_MS_N_BW, $Rich_Web_Effect[0]->Rich_Web_MS_N_BS, $Rich_Web_Effect[0]->Rich_Web_MS_N_BC, $Rich_Web_Effect[0]->Rich_Web_MS_NI_FS, $Rich_Web_Effect[0]->Rich_Web_MS_NI_FF, $Rich_Web_Effect[0]->Rich_Web_MS_NI_C, $Rich_Web_Effect[0]->Rich_Web_MS_NI_HC, $Rich_Web_Effect[0]->Rich_Web_MS_NI_CC, $Rich_Web_Effect[0]->Rich_Web_MS_NIC_C, $Rich_Web_Effect[0]->Rich_Web_MS_Img_BW, $Rich_Web_Effect[0]->Rich_Web_MS_Img_BS, $Rich_Web_Effect[0]->Rich_Web_MS_Img_BC, $Rich_Web_Effect[0]->Rich_Web_MS_Img_BSh, $Rich_Web_Effect[0]->Rich_Web_MS_Img_ShC, $Rich_Web_Effect[0]->Rich_Web_MS_Img_ShT, $Rich_Web_Effect[0]->Rich_Web_MS_T_FS, $Rich_Web_Effect[0]->Rich_Web_MS_T_FF, $Rich_Web_Effect[0]->Rich_Web_MS_T_C, $Rich_Web_Effect[0]->Rich_Web_MS_T_TA, $Rich_Web_Effect[0]->Rich_Web_MS_T_TSh, $Rich_Web_Effect[0]->Rich_Web_MS_T_TShC, $Rich_Web_Effect[0]->Rich_Web_MS_D_FS, $Rich_Web_Effect[0]->Rich_Web_MS_D_FF, $Rich_Web_Effect[0]->Rich_Web_MS_D_C, $Rich_Web_Effect[0]->Rich_Web_MS_D_TA, $Rich_Web_Effect[0]->Rich_Web_MS_D_TSh, $Rich_Web_Effect[0]->Rich_Web_MS_D_TShC, $Rich_Web_Effect[0]->Rich_Web_MS_Ic_T, $Rich_Web_Effect[0]->Rich_Web_MS_Ic_S, $Rich_Web_Effect[0]->Rich_Web_MS_Ic_C, $Rich_Web_Effect[0]->Rich_Web_MS_startAt, $Rich_Web_Effect[0]->Rich_Web_MS_Sl1EfT, $Rich_Web_Effect[0]->Rich_Web_MS_NI_CCC, $Rich_Web_Effect[0]->Rich_Web_MS_PlIc_T, $Rich_Web_Effect[0]->Rich_Web_MS_PlIc_S, $Rich_Web_Effect[0]->Rich_Web_MS_PlIc_BgC, $Rich_Web_Effect[0]->Rich_Web_MS_PlIc_C, $Rich_Web_Effect[0]->Rich_Web_MS_PlIc_HBgC, $Rich_Web_Effect[0]->Rich_Web_MS_PlIc_HC));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name13_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name13_Loader (id, RW_VS_ID, Rich_Web_TSL_L_Show, Rich_Web_TSL_LT_Show, Rich_Web_TSL_LT, Rich_Web_TSL_L_BgC, Rich_Web_TSL_L_T, Rich_Web_TSL_LT_T, Rich_Web_TSL_LT_FS, Rich_Web_TSL_LT_FF, Rich_Web_TSL_LT_C, Rich_Web_TSL_L_T1_C, Rich_Web_TSL_L_T2_C, Rich_Web_TSL_L_T3_C, Rich_Web_TSL_LT_T2_BC, Rich_Web_TSL_L_C, Rich_Web_TSL_LT_T2_AnC, Rich_Web_TSL_LT_T3_BgC, Rich_Web_TSL_L_S, Rich_Web_TSL_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_TSL_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='Amazing Simple Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name14 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name14 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_GO_NS1_Width, Rich_Web_GO_NS1_Height, Rich_Web_GO_NS1_Autoplay, Rich_Web_GO_NS1_PTime, Rich_Web_GO_NS1_BW, Rich_Web_GO_NS1_BType, Rich_Web_GO_NS1_BC, Rich_Web_GO_NS1_BSh, Rich_Web_GO_NS1_BSh_Type, Rich_Web_GO_NS1_BSh_Col, Rich_Web_TO_NS1_Show, Rich_Web_TO_NS1_FSize, Rich_Web_TO_NS1_FFamily, Rich_Web_TO_NS1_Col, Rich_Web_TO_NS1_Num_Show, Rich_Web_TO_NS1_Num_FSize, Rich_Web_TO_NS1_Num_FFamily, Rich_Web_TO_NS1_Num_Col, Rich_Web_PO_NS1_Show, Rich_Web_PO_NS1_Width, Rich_Web_PO_NS1_Height, Rich_Web_PO_NS1_PB, Rich_Web_PO_NS1_Col, Rich_Web_PO_NS1_Cur_Col, Rich_Web_IO_NS1_FSize, Rich_Web_IO_NS1_Col, Rich_Web_PO_NS1_Hov_Col, Rich_Web_IO_NS1_Cur_Col, Rich_Web_IO_NS1_BgCol, Rich_Web_IO_NS1_Icon_Type, Rich_Web_DO_NS1_Show, Rich_Web_DO_NS1_FSize, Rich_Web_DO_NS1_FFamily, Rich_Web_DO_NS1_Col, Rich_Web_PIO_NS1_BgCol, Rich_Web_PIO_NS1_Col, Rich_Web_PIO_NS1_HovBgCol, Rich_Web_PIO_NS1_HovCol, Rich_Web_IO_NS1_Show, Rich_Web_IO_NS1_HovBgCol, Rich_Web_IO_NS1_Arrow_Type, Rich_Web_IO_NS1_Width, Rich_Web_IO_NS1_Height, Rich_Web_IO_NS1_Image_Type) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_Width, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_Height, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_Autoplay, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_PTime, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_BW, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_BType, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_BC, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_BSh, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_BSh_Type, $Rich_Web_Effect[0]->Rich_Web_GO_NS1_BSh_Col, $Rich_Web_Effect[0]->Rich_Web_TO_NS1_Show, $Rich_Web_Effect[0]->Rich_Web_TO_NS1_FSize, $Rich_Web_Effect[0]->Rich_Web_TO_NS1_FFamily, $Rich_Web_Effect[0]->Rich_Web_TO_NS1_Col, $Rich_Web_Effect[0]->Rich_Web_TO_NS1_Num_Show, $Rich_Web_Effect[0]->Rich_Web_TO_NS1_Num_FSize, $Rich_Web_Effect[0]->Rich_Web_TO_NS1_Num_FFamily, $Rich_Web_Effect[0]->Rich_Web_TO_NS1_Num_Col, $Rich_Web_Effect[0]->Rich_Web_PO_NS1_Show, $Rich_Web_Effect[0]->Rich_Web_PO_NS1_Width, $Rich_Web_Effect[0]->Rich_Web_PO_NS1_Height, $Rich_Web_Effect[0]->Rich_Web_PO_NS1_PB, $Rich_Web_Effect[0]->Rich_Web_PO_NS1_Col, $Rich_Web_Effect[0]->Rich_Web_PO_NS1_Cur_Col, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_FSize, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_Col, $Rich_Web_Effect[0]->Rich_Web_PO_NS1_Hov_Col, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_Cur_Col, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_BgCol, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_Icon_Type, $Rich_Web_Effect[0]->Rich_Web_DO_NS1_Show, $Rich_Web_Effect[0]->Rich_Web_DO_NS1_FSize, $Rich_Web_Effect[0]->Rich_Web_DO_NS1_FFamily, $Rich_Web_Effect[0]->Rich_Web_DO_NS1_Col, $Rich_Web_Effect[0]->Rich_Web_PIO_NS1_BgCol, $Rich_Web_Effect[0]->Rich_Web_PIO_NS1_Col, $Rich_Web_Effect[0]->Rich_Web_PIO_NS1_HovBgCol, $Rich_Web_Effect[0]->Rich_Web_PIO_NS1_HovCol, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_Show, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_HovBgCol, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_Arrow_Type, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_Width, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_Height, $Rich_Web_Effect[0]->Rich_Web_IO_NS1_Image_Type));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name14_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name14_Loader (id, RW_VS_ID, Rich_Web_ASSl_L_Show, Rich_Web_ASSl_LT_Show, Rich_Web_ASSl_LT, Rich_Web_ASSl_L_BgC, Rich_Web_ASSl_L_T, Rich_Web_ASSl_LT_T, Rich_Web_ASSl_LT_FS, Rich_Web_ASSl_LT_FF, Rich_Web_ASSl_LT_C, Rich_Web_ASSl_L_T1_C, Rich_Web_ASSl_L_T2_C, Rich_Web_ASSl_L_T3_C, Rich_Web_ASSl_LT_T2_BC, Rich_Web_ASSl_L_C, Rich_Web_ASSl_LT_T2_AnC, Rich_Web_ASSl_LT_T3_BgC, Rich_Web_ASSl_L_S, Rich_Web_ASSl_Loading_Show) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT_T2_AnC,  $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_LT_T3_BgC,  $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_L_S,  $Rich_Web_Effect_Loading[0]->Rich_Web_ASSl_Loading_Show));
		}
		else if($Rich_Web_Effects[0]->slider_Vid_type=='News Slider')
		{
			$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name15 WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name15 (id, RW_VS_ID, Rich_Web_VSlider_Option_Name, Rich_Web_VSlider_Option_Type, Rich_Web_NewSl_GO_CC, Rich_Web_NewSl_GO_Autoplay_Show, Rich_Web_NewSl_GO_C_BW, Rich_Web_NewSl_GO_C_BC, Rich_Web_NewSl_GO_C_BgC, Rich_Web_NewSl_GO_C_BShC, Rich_Web_NewSl_GO_C_BShT, Rich_Web_NewSl_GO_C_IHBgC, Rich_Web_NewSl_IO_PI_S, Rich_Web_NewSl_IO_PI_T, Rich_Web_NewSl_IO_PI_C, Rich_Web_NewSl_IO_VI_BgC, Rich_Web_NewSl_IO_VI_T, Rich_Web_NewSl_IO_VI_S, Rich_Web_NewSl_IO_VI_C, Rich_Web_NewSl_IO_VI_RShow, Rich_Web_NewSl_IO_LI_Show, Rich_Web_NewSl_IO_LI_T, Rich_Web_NewSl_TO_FS, Rich_Web_NewSl_TO_C, Rich_Web_NewSl_TO_FF, Rich_Web_NewSl_TO_TA, Rich_Web_NewSl_LO_FS, Rich_Web_NewSl_LO_C, Rich_Web_NewSl_LO_FF, Rich_Web_NewSl_LO_P, Rich_Web_NewSl_LO_BgC, Rich_Web_NewSl_LO_HBgC, Rich_Web_NewSl_LO_HC, Rich_Web_NewSl_LO_T, Rich_Web_NewSl_LO_HT, Rich_Web_NewSl_Option7, Rich_Web_NewSl_Option8, Rich_Web_NewSl_Option9) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effects[0]->slider_vid_name, $Rich_Web_Effect[0]->Rich_Web_VSlider_Option_Type, $Rich_Web_Effect[0]->Rich_Web_NewSl_GO_CC, $Rich_Web_Effect[0]->Rich_Web_NewSl_GO_Autoplay_Show, $Rich_Web_Effect[0]->Rich_Web_NewSl_GO_C_BW, $Rich_Web_Effect[0]->Rich_Web_NewSl_GO_C_BC, $Rich_Web_Effect[0]->Rich_Web_NewSl_GO_C_BgC, $Rich_Web_Effect[0]->Rich_Web_NewSl_GO_C_BShC, $Rich_Web_Effect[0]->Rich_Web_NewSl_GO_C_BShT, $Rich_Web_Effect[0]->Rich_Web_NewSl_GO_C_IHBgC, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_PI_S, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_PI_T, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_PI_C, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_VI_BgC, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_VI_T, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_VI_S, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_VI_C, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_VI_RShow, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_LI_Show, $Rich_Web_Effect[0]->Rich_Web_NewSl_IO_LI_T, $Rich_Web_Effect[0]->Rich_Web_NewSl_TO_FS, $Rich_Web_Effect[0]->Rich_Web_NewSl_TO_C, $Rich_Web_Effect[0]->Rich_Web_NewSl_TO_FF, $Rich_Web_Effect[0]->Rich_Web_NewSl_TO_TA, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_FS, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_C, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_FF, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_P, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_BgC, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_HBgC, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_HC, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_T, $Rich_Web_Effect[0]->Rich_Web_NewSl_LO_HT, $Rich_Web_Effect[0]->Rich_Web_NewSl_Option7, $Rich_Web_Effect[0]->Rich_Web_NewSl_Option8, $Rich_Web_Effect[0]->Rich_Web_NewSl_Option9));

			$Rich_Web_Effect_Loading=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name15_Loader WHERE RW_VS_ID=%s", $RW_VS_ID));

			$wpdb->query($wpdb->prepare("INSERT INTO $table_name15_Loader (id, RW_VS_ID, Rich_Web_NewSl_L_Show, Rich_Web_NewSl_LT_Show, Rich_Web_NewSl_LT, Rich_Web_NewSl_L_BgC, Rich_Web_NewSl_L_T, Rich_Web_NewSl_LT_T, Rich_Web_NewSl_LT_FS, Rich_Web_NewSl_LT_FF, Rich_Web_NewSl_LT_C, Rich_Web_NewSl_L_T1_C, Rich_Web_NewSl_L_T2_C, Rich_Web_NewSl_L_T3_C, Rich_Web_NewSl_LT_T2_BC, Rich_Web_NewSl_L_C, Rich_Web_NewSl_LT_T2_AnC, Rich_Web_NewSl_LT_T3_BgC, Rich_Web_NewSl_L_S, Rich_Web_NewSl_Loading_Show, Rich_Web_NewSl_NP_P, Rich_Web_NewSl_NP_BgC, Rich_Web_NewSl_NP_HBgC, Rich_Web_NewSl_NP_BS, Rich_Web_NewSl_NP_BC, Rich_Web_NewSl_NP_HBC, Rich_Web_NewSl_NP_IcT, Rich_Web_NewSl_NP_IcS, Rich_Web_NewSl_NP_IcC, Rich_Web_NewSl_NP_HT, Rich_Web_NewSl_N_P, Rich_Web_NewSl_N_S, Rich_Web_NewSl_N_C, Rich_Web_NewSl_N_HC, Rich_Web_NewSl_N_CC, Rich_Web_NewSl_P_CBgC, Rich_Web_NewSl_P_VW, Rich_Web_NewSl_P_VShT, Rich_Web_NewSl_P_VShC, Rich_Web_NewSl_Option1, Rich_Web_NewSl_Option2) VALUES (%d, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", '', $Rich_Web_VS_ID[0]->id, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_L_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_L_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_L_T, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT_T, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT_FS, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT_FF, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT_C, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_L_T1_C, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_L_T2_C, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_L_T3_C, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT_T2_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_L_C, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT_T2_AnC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_LT_T3_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_L_S, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_Loading_Show, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_P, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_BgC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_HBgC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_BS, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_BC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_HBC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_IcT, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_IcS, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_IcC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_NP_HT, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_N_P, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_N_S, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_N_C, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_N_HC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_N_CC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_P_CBgC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_P_VW, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_P_VShT, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_P_VShC, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_Option1, $Rich_Web_Effect_Loading[0]->Rich_Web_NewSl_Option2));
		}

		$Rich_Web_VS_ID[0]->copiedOptionID = $RW_VS_ID;
		echo json_encode($Rich_Web_VS_ID[0]);
		die();
	}
	add_action( 'wp_ajax_Rich_Web_VS_Insert_Option', 'Rich_Web_VS_Insert_Option_Callback' );
	add_action( 'wp_ajax_nopriv_Rich_Web_VS_Insert_Option', 'Rich_Web_VS_Insert_Option_Callback' );
	function Rich_Web_VS_Insert_Option_Callback()
	{
		$Option_Type = sanitize_text_field($_POST['Type']);
		//fileNames
		$filename = plugin_dir_path( __FILE__ ) . 'PHP/RW_VS_Slider_'.$Option_Type.'.php';
		$filename_js = plugin_dir_path( __FILE__ ) . 'Scripts/RW_VS_Slider_'.$Option_Type.'.js.php';
		$filename_css = plugin_dir_path( __FILE__ ) . 'Style/RW_VS_Slider_'.$Option_Type.'.css.php';
		//Dir URI
		$dir_name =  plugin_dir_path( __FILE__ );
		//Moves URLs
		$move_from = plugin_dir_path( __FILE__ ) . "RW_VS_Slider_".$Option_Type."/RW_VS_Slider_".$Option_Type.".php";
		$move_to = plugin_dir_path( __FILE__ ) . "PHP/RW_VS_Slider_".$Option_Type.".php";
		$move_from_js = plugin_dir_path( __FILE__ ) . "RW_VS_Slider_".$Option_Type."/RW_VS_Slider_".$Option_Type.".js.php";
		$move_to_js = plugin_dir_path( __FILE__ ) . "Scripts/RW_VS_Slider_".$Option_Type.".js.php";
		$move_from_css = plugin_dir_path( __FILE__ ) . "RW_VS_Slider_".$Option_Type."/RW_VS_Slider_".$Option_Type.".css.php";
		$move_to_css = plugin_dir_path( __FILE__ ) . "Style/RW_VS_Slider_".$Option_Type.".css.php";
		$move_from_query = plugin_dir_path( __FILE__ ) . "RW_VS_Slider_".$Option_Type."/RW_VS_".$Option_Type."_Query.php";
		$move_to_query = plugin_dir_path( __FILE__ ) . "RW_VS_".$Option_Type."_Query.php";
		//Folder Name
		$folderName = plugin_dir_path( __FILE__ ) . "RW_VS_Slider_".$Option_Type;
		$ch = curl_init();
		$source = "https://rich-web.org/vs.org-free/RW_VS_Slider_".$Option_Type.".zip";
		curl_setopt($ch, CURLOPT_URL, $source);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		$data = curl_exec ($ch);
		curl_close ($ch);
		$destination = "RW_VS_Slider_".$Option_Type.".zip"; 
		$file = fopen($destination, "w+");
		fputs($file, $data);
		fclose($file);
		$zip = new ZipArchive;
		$res = $zip->open("RW_VS_Slider_".$Option_Type.".zip");
		if ($res === TRUE) {
			$zip->extractTo($dir_name); // directory to extract contents to
			$zip->close();
			unlink("RW_VS_Slider_".$Option_Type.".zip");
		}
		//if files not exist get 
		if (file_exists($move_from_query) == TRUE){ rename ( $move_from_query, $move_to_query); }
		if (file_exists($filename) != TRUE){ rename ( $move_from, $move_to); }
		if (file_exists($filename_js) != TRUE){ rename ( $move_from_js, $move_to_js); }
		if (file_exists($filename_css) != TRUE){ rename ( $move_from_css, $move_to_css); }
		//open downloaded files folder
		if (is_dir($folderName)){
			$folderHandle = opendir($folderName);
		}
		if (!$folderHandle){
			return false;
		}
		while($file = readdir($folderHandle)) {
			if ($file != "." && $file != "..") {
				if (!is_dir($folderName."/".$file)){
					unlink($folderName."/".$file);
				}
				else{
					removeFolder($folderName.'/'.$file);
				}
				}
			}
			  closedir($folderHandle);
			  rmdir($folderName);
			  require_once( "RW_VS_".$Option_Type."_Query.php ");
			  RW_VS_Query();  
			  $remove_file = plugin_dir_path( __FILE__ ) ."RW_VS_".$Option_Type."_Query.php";
			  unlink($remove_file);
			  global $wpdb;
			  $effects_datatable  = $wpdb->prefix . "rich_web_video_slider_effects_data";
			  $Rich_Web_Video_Slider_ID=$wpdb->get_results($wpdb->prepare("SELECT * FROM $effects_datatable WHERE id > %d order by id desc limit 1", 0));
			  echo json_encode($Rich_Web_Video_Slider_ID[0]);
			die();
	}

	add_action( 'wp_ajax_Rich_Web_VS_Name_Available', 'Rich_Web_VS_Name_Available_Callback' );
	add_action( 'wp_ajax_nopriv_Rich_Web_VS_Name_Available', 'Rich_Web_VS_Name_Available_Callback' );
	function Rich_Web_VS_Name_Available_Callback(){
		global $wpdb;
		$table_name_effect = $wpdb->prefix . "rich_web_video_slider_effects_data";
		
		$RW_VS_name = sanitize_text_field($_POST['RW_VS_name']);
		$RW_VS_id = sanitize_text_field($_POST['RW_VS_id']);

			$RW_VS_Name_Avaible=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name_effect WHERE id != %s AND slider_vid_name = %s", $RW_VS_id, $RW_VS_name));
			if (count($RW_VS_Name_Avaible) == 0) {
				echo('true');
			}else{
				echo("false");
			}
		
		wp_die();
	}
?>