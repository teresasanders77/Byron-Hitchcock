<?php
	class Rich_Web_Video_Slider extends WP_Widget
	{
		function __construct()
		{
			$params=array('name'=>'Rich-Web Video Slider','description'=>'This is the widget of Rich-Web Video Slider plugin');
			parent::__construct('Rich_Web_Video_Slider','',$params);
		}
		function form($instance)
		{
			$defaults = array('Rich_Web_Video'=>'');
			$instance = wp_parse_args((array)$instance, $defaults);
			$Rich_Web_Video = $instance['Rich_Web_Video'];
			?>
			<div>
				<p>
					Slider Title:
					<select name="<?php echo $this->get_field_name('Rich_Web_Video'); ?>" class="widefat">
						<?php
							global $wpdb;

							$table_name2 = $wpdb->prefix . "rich_web_video_slider_manager";
							$Rich_Web_Video=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name2 WHERE id > %d", 0));
							
							foreach ($Rich_Web_Video as $Rich_Web_Slider1)
							{
								?> <option value="<?php echo $Rich_Web_Slider1->id; ?>"> <?php echo $Rich_Web_Slider1->Slider_Title; ?> </option> <?php
							}
						?>
					</select>
				</p>
			</div>
			<?php
		}
		function widget($args,$instance)
		{
			extract($args);
			$Rich_Web_Video = empty($instance['Rich_Web_Video']) ? '' : $instance['Rich_Web_Video'];

			global $wpdb;
			$table_name2  = $wpdb->prefix . "rich_web_video_slider_manager";
			$table_name3  = $wpdb->prefix . "rich_web_video_slider_videos";
			$table_name4  = $wpdb->prefix . "rich_web_video_slider_effects_data";
			require_once( 'Rich-Web-Video-Slider-Check.php' );
			$Rich_Web_VS_Widget_Arr = ['Content Slider' => 'rich_web_vs_effect_1','Slick Slider' => 'rich_web_vs_effect_2','Thumbnails Slider' => 'rich_web_vs_effect_3','Video Carousel/Content Popup' => 'rich_web_vs_effect_4','Simple Video Slider' => 'rich_web_vs_effect_5','Video Slider/Vertical Thumbnails' => 'rich_web_vs_effect_6','Horizontal Posts Slider' => 'rich_web_vs_effect_7','Rich Slider' => 'rich_web_vs_effect_8','TimeLine Slider' => 'rich_web_vs_effect_9','Amazing Simple Slider' => 'rich_web_vs_effect_10','News Slider' => 'rich_web_vs_effect_11'];
			$Rich_Web_VS_Widget_Load_Txt = ['Content Slider' => 'Rich_Web_VS_ContSl_LT','Slick Slider' => 'Rich_Web_SlickSl_LT','Thumbnails Slider' => 'Rich_Web_ThumbSl_LT','Video Carousel/Content Popup' => 'Rich_Web_VCCP_LT','Simple Video Slider' => 'Rich_Web_SimpleVS_LT','Video Slider/Vertical Thumbnails' => 'Rich_Web_VSVT_LT','Horizontal Posts Slider' => 'Rich_Web_HSL_LT','Rich Slider' => 'Rich_Web_RichSl_LT','TimeLine Slider' => 'Rich_Web_TSL_LT','Amazing Simple Slider' => 'Rich_Web_ASSl_LT','News Slider' => 'Rich_Web_NewSl_LT'];
			$Rich_Web_VSlider_Manager = $wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name2 WHERE id = %d", $Rich_Web_Video));
			$Rich_Web_VSlider_ID = $Rich_Web_VSlider_Manager[0]->id;
			$Rich_Web_VSlider_Videos  = $wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name3 WHERE Slider_ID = %d order by id", $Rich_Web_Video));
			$Rich_Web_VSlider_Eff_Dat = $wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name4 WHERE id = %s", $Rich_Web_VSlider_Manager[0]->Slider_Type));
			$Rich_Web_VS_Effect_Table = $wpdb->prefix . $Rich_Web_VS_Widget_Arr[$Rich_Web_VSlider_Eff_Dat[0]->slider_Vid_type];
			$Rich_Web_VS_Loader_Effect_Table = $wpdb->prefix . $Rich_Web_VS_Widget_Arr[$Rich_Web_VSlider_Eff_Dat[0]->slider_Vid_type] . '_loader';
			$Rich_Web_VSlider_Eff = $wpdb->get_results($wpdb->prepare("SELECT * FROM $Rich_Web_VS_Effect_Table WHERE RW_VS_ID = %s", $Rich_Web_VSlider_Eff_Dat[0]->id));
			$Rich_Web_VSlider_Eff_Loader = $wpdb->get_results($wpdb->prepare("SELECT * FROM $Rich_Web_VS_Loader_Effect_Table WHERE RW_VS_ID = %s", $Rich_Web_VSlider_Eff_Dat[0]->id));
			
			if (strpos($Rich_Web_VSlider_Eff_Dat[0]->slider_Vid_type, '/') !== false) :
				$RW_VS_O_T = preg_replace("/\//",' ',$Rich_Web_VSlider_Eff_Dat[0]->slider_Vid_type);
				$RW_VS_Opt_Type = explode(" ", $RW_VS_O_T);
				$RW_VS_Opt_Type = $RW_VS_Opt_Type[0]. '-' .$RW_VS_Opt_Type[1];
			else:
				$RW_VS_Opt_Type = explode(" ", $Rich_Web_VSlider_Eff_Dat[0]->slider_Vid_type);
				$RW_VS_Opt_Type = $RW_VS_Opt_Type[0];
			endif;
			echo $before_widget;

			$Rich_Web_VS_Widget_L = $Rich_Web_VS_Widget_Load_Txt[$Rich_Web_VSlider_Eff_Dat[0]->slider_Vid_type];
		 	$text=$Rich_Web_VSlider_Eff_Loader[0]->$Rich_Web_VS_Widget_L;
			$text_array=str_split($text);
			$str_sum=0;
			$anim_sum=0.75; 
			require('Style/RW_VS_Slider_'. $RW_VS_Opt_Type .'.css.php');
			require('PHP/RW_VS_Slider_'. $RW_VS_Opt_Type .'.php');
			require('Scripts/RW_VS_Slider_'. $RW_VS_Opt_Type .'.js.php');

			echo $after_widget;
		}

	}
?>