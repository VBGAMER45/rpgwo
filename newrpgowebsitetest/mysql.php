<?php
/*
mysql2i.func.php rev 3
member of mysql2i.class.php ver 1.3
*/

//predifined fetch constants
define('MYSQL_BOTH',MYSQLI_BOTH);
define('MYSQL_NUM',MYSQLI_NUM);
define('MYSQL_ASSOC',MYSQLI_ASSOC);

function mysql_affected_rows($link=null){

    return mysql2i::mysql_affected_rows($link);

}

function mysql_client_encoding($link=null){

    return mysql2i::mysql_client_encoding($link);

}

function mysql_close($link=null){

    return mysql2i::mysql_close($link);

}

function mysql_connect($host = '',$username = '',$passwd = '',$new_link = false,$client_flags = 0){

    return mysql2i::mysql_connect($host,$username,$passwd);

}

function mysql_create_db($database_name,$link=null){

    return mysql2i::mysql_create_db($database_name,$link);

}

function mysql_data_seek($result,$offset){

    return mysql2i::mysql_data_seek($result,$offset);

}

function mysql_db_name($result,$row,$field=null){

    return mysql2i::mysql_db_name($result,$row,$field);

}

function mysql_db_query($database,$query,$link=null){

    return mysql2i::mysql_db_query($database,$query,$link);

}

function mysql_drop_db($database,$link=null){

    return mysql2i::mysql_drop_db($database,$link);

}

function mysql_errno($link=null){

    return mysql2i::mysql_errno($link);

}

function mysql_error($link=null){

    return mysql2i::mysql_error($link);

}

function mysql_escape_string($escapestr){

    return mysql2i::mysql_escape_string($escapestr);

}

function mysql_fetch_array($result,$resulttype=MYSQLI_BOTH){

    return mysql2i::mysql_fetch_array($result,$resulttype);

}

function mysql_fetch_assoc($result){

    return mysql2i::mysql_fetch_assoc($result);

}

function mysql_fetch_field($result,$field_offset=null){

    return mysql2i::mysql_fetch_field($result,$field_offset);

}

function mysql_fetch_lengths($result){

    return mysql2i::mysql_fetch_lengths($result);

}

function mysql_fetch_object($result,$class_name=null,$params=null){

    return mysql2i::mysql_fetch_object($result,$class_name,$params);

}

function mysql_fetch_row($result){

    return mysql2i::mysql_fetch_row($result);

}

function mysql_field_flags($result,$field_offset){

    return mysql2i::mysql_field_flags($result,$field_offset);

}

function mysql_field_len($result,$field_offset){

    return mysql2i::mysql_field_len($result,$field_offset);

}

function mysql_field_name($result,$field_offset){

    return mysql2i::mysql_field_name($result,$field_offset);

}

function mysql_field_seek($result,$fieldnr){

    return mysql2i::mysql_field_seek($result,$fieldnr);

}

function mysql_field_table($result,$field_offset){

    return mysql2i::mysql_field_table($result,$field_offset);

}

function mysql_field_type($result,$field_offset){

    return mysql2i::mysql_field_type($result,$field_offset);

}

function mysql_free_result($result){

    return mysql2i::mysql_free_result($result);

}

function mysql_get_client_info(){

    return mysql2i::mysql_get_client_info();
}

function mysql_get_host_info($link=null){

    return mysql2i::mysql_get_host_info($link);

}

function mysql_get_proto_info($link=null){

    return mysql2i::mysql_get_proto_info($link);

}

function mysql_get_server_info($link=null){

    return mysql2i::mysql_get_server_info($link);

}

function mysql_info($link=null){

    return mysql2i::mysql_info($link);

}

function mysql_insert_id($link=null){

    return mysql2i::mysql_insert_id($link);

}

function mysql_list_dbs($link=null){

    return mysql2i::mysql_list_dbs();

}

function mysql_list_fields($database_name,$table_name,$link=null){

    return mysql2i::mysql_list_fields($database_name,$table_name,$link);

}

function mysql_list_processes($link=null){

    return mysql2i::mysql_list_processes($link);

}

function mysql_list_tables($database,$link){

    return mysql2i::mysql_list_tables($database,$link);

}

function mysql_num_fields($result){

    return mysql2i::mysql_num_fields($result);

}

function mysql_num_rows($result){

    return mysql2i::mysql_num_rows($result);

}

function mysql_pconnect($host = '',$username = '',$passwd = '',$new_link = false,$client_flags = 0){

    return mysql2i::mysql_pconnect($host,$username,$passwd,$new_link,$client_flags);

}

function mysql_ping($link=null){

    return mysql2i::mysql_ping($link);

}

function mysql_query($query,$link=null){

    return mysql2i::mysql_query($query,$link);

}

function mysql_real_escape_string($escapestr,$link=null){

    return mysql2i::mysql_real_escape_string($escapestr,$link);

}

function mysql_result($result,$row,$field=null){

    return mysql2i::mysql_result($result,$row,$field);

}

function mysql_select_db($dbname,$link=null){

    return mysql2i::mysql_select_db($dbname,$link);

}

function mysql_set_charset($charset,$link=null){

    return mysql2i::mysql_set_charset($charset,$link);

}

function mysql_stat($link=null){

    return mysql2i::mysql_stat($link);

}

function mysql_tablename($result,$row,$field=null){

    return mysql2i::mysql_tablename($result,$row,$field);

}

function mysql_thread_id($link=null){

    return mysql2i::mysql_thread_id($link);

}

function mysql_unbuffered_query($query,$link=null){

    return mysql2i::mysql_unbuffered_query($query,$link);

}


  class mysql2i{

      public static $currObj;

      public static function mysql_affected_rows($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_affected_rows($link);

      }

      public static function mysql_client_encoding($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_character_set_name($link);

      }

      public static function mysql_close($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_close($link);

      }

      public static function mysql_connect($host = '',$username = '',$passwd = '',$new_link = false,$client_flags = 0){

          $link = mysqli_connect($host,$username,$passwd);
          self::$currObj = $link;

          return $link;

      }

      public static function mysql_create_db($database_name,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          $query = "CREATE DATABASE `".$database_name."`";
          mysqli_query($link,$query);

          if( empty(mysqli_errno($link)) ){
              return true;
          }else{
              return false;
          }

      }

      public static function mysql_data_seek($result,$offset){

          return mysqli_data_seek($result,$offset);

      }

      public static function mysql_db_name($result,$row,$field=null){

          mysqli_data_seek($result,$row);

          $f = mysqli_fetch_row($result);

          return $f[0];

      }

      public static function mysql_db_query($database,$query,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }
          mysqli_select_db($link,$database);
          $r = mysqli_query($link,$query);

          return $r;

      }

      public static function mysql_drop_db($database,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }
          $query = "DROP DATABASE `".$database."`";
          mysqli_query($link,$query);

          if( empty(mysqli_errno($link)) ){
              return true;
          }else{
              return false;
          }

      }

      public static function mysql_errno($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_errno($link);
      }

      public static function mysql_error($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_error($link);
      }

      public static function mysql_escape_string($escapestr){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_real_escape_string($link,$escapestr);
      }

      public static function mysql_fetch_array($result,$resulttype=MYSQLI_BOTH){

          return mysqli_fetch_array($result,$resulttype);

      }

      public static function mysql_fetch_assoc($result){

          return mysqli_fetch_assoc($result);

      }

      public static function mysql_fetch_field($result,$field_offset=null){

          if( !empty($field_offset) ){
              for($x=0;$x<$field_offset;$x++){
                  mysqli_fetch_field($result);
              }
          }

          return mysqli_fetch_field($result);

      }

      public static function mysql_fetch_lengths($result){

          return mysqli_fetch_lengths($result);

      }

      public static function mysql_fetch_object($result,$class_name=null,$params=null){

          return mysqli_fetch_object($result,$class_name,$params);

      }

      public static function mysql_fetch_row($result){

          return mysqli_fetch_row($result);

      }

      /*
      credit to andre at koethur dot de from php.net and NinjaKC from stackoverflow.com
      */
      public static function mysql_field_flags( $result , $field_offset ) {
          static $flags;

          $flags_num = mysqli_fetch_field_direct($result,$field_offset)->flags;

          if (!isset($flags))
          {
              $flags = array();
              $constants = get_defined_constants(true);
              foreach ($constants['mysqli'] as $c => $n) if (preg_match('/MYSQLI_(.*)_FLAG$/', $c, $m)) if (!array_key_exists($n, $flags)) $flags[$n] = $m[1];
          }

          $result = array();
          foreach ($flags as $n => $t) if ($flags_num & $n) $result[] = $t;

          $return = implode(' ', $result);
          $return = str_replace('PRI_KEY','PRIMARY_KEY',$return);
          $return = strtolower($return);

          return $return;
      }

      public static function mysql_field_len($result,$field_offset){

          $fieldInfo = mysqli_fetch_field_direct($result,$field_offset);

          return $fieldInfo->length;

      }

      public static function mysql_field_name($result,$field_offset){

          $fieldInfo = mysqli_fetch_field_direct($result,$field_offset);

          return $fieldInfo->name;

      }

      public static function mysql_field_seek($result,$fieldnr){

          return mysqli_field_seek($result,$fieldnr);

      }

      public static function mysql_field_table($result,$field_offset){

          $fieldInfo = mysqli_fetch_field_direct($result,$field_offset);

          return $fieldInfo->table;

      }

      /*
      credit to andre at koethur dot de from php.net and NinjaKC from stackoverflow.com
      */
      public static function mysql_field_type( $result , $field_offset ) {
          static $types;

          $type_id = mysqli_fetch_field_direct($result,$field_offset)->type;

          if (!isset($types))
          {
              $types = array();
              $constants = get_defined_constants(true);
              foreach ($constants['mysqli'] as $c => $n) if (preg_match('/^MYSQLI_TYPE_(.*)/', $c, $m)) $types[$n] = $m[1];
          }

          return array_key_exists($type_id, $types)? $types[$type_id] : NULL;
      }

      public static function mysql_free_result($result){

          return mysqli_free_result($result);

      }

      public static function mysql_get_client_info(){

          $link = self::$currObj;

          return mysqli_get_client_info($link);
      }

      public static function mysql_get_host_info($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_get_host_info($link);
      }

      public static function mysql_get_proto_info($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_get_proto_info($link);
      }

      public static function mysql_get_server_info($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_get_server_info($link);
      }

      public static function mysql_info($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_info($link);
      }

      public static function mysql_insert_id($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_insert_id($link);
      }

      public static function mysql_list_dbs($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }
          $query = "SHOW DATABASES";
          $r = mysqli_query($link,$query);

          if( empty(mysqli_errno($link)) ){
              return $r;
          }else{
              return false;
          }

      }

      public static function mysql_list_fields($database_name,$table_name,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }
          $query = "SHOW COLUMNS FROM `".$table_name."`";
          $r = mysqli_query($link,$query);

          if( empty(mysqli_errno($link)) ){
              return $r;
          }else{
              return false;
          }

      }

      public static function mysql_list_processes($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_thread_id($link);
      }

      public static function mysql_list_tables($database,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }
          $query = "SHOW TABLES FROM `".$database."`";
          $r = mysqli_query($link,$query);

          if( empty(mysqli_errno($link)) ){
              return $r;
          }else{
              return false;
          }

      }

      public static function mysql_num_fields($result){

          $link = self::$currObj;

          return mysqli_field_count($link);
      }

      public static function mysql_num_rows($result){

          return mysqli_num_rows($result);
      }

      public static function mysql_pconnect($host = '',$username = '',$passwd = '',$new_link = false,$client_flags = 0){

          $link = mysqli_connect('p:'.$host,$username,$passwd);
          if( !$link ){
              echo mysqli_error($link).'<br>';
          }
          self::$currObj = $link;

          return $link;

      }

      public static function mysql_ping($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_ping($link);

      }

      public static function mysql_query($query,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          $r = mysqli_query($link,$query);

          return $r;
      }

      public static function mysql_real_escape_string($escapestr,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_real_escape_string($link,$escapestr);

      }

      public static function mysql_result($result,$row,$field=null){

          mysqli_data_seek($result,$row);
          if( !empty($field) ){
              while($finfo = mysqli_fetch_field($result)) {
                  if( $field == $finfo->name ){
                      $f = mysqli_fetch_assoc($result);
                      return $f[$field];
                  }
              }
          }

          $f = mysqli_fetch_array($result);

          return $f[0];

      }

      public static function mysql_select_db($dbname,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }elseif( is_object($link) ){
              self::$currObj = $link;
          }
          mysqli_select_db($link, $dbname);

          if( empty(mysqli_errno($link)) ){
              return true;
          }else{
              return false;
          }

      }

      public static function mysql_set_charset($charset,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_set_charset($link,$charset);

      }

      public static function mysql_stat($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_stat($link);

      }

      public static function mysql_tablename($result,$row,$field=null){

          mysqli_data_seek($result,$row);

          $f = mysqli_fetch_array($result);

          return $f[0];

      }

      public static function mysql_thread_id($link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          return mysqli_thread_id($link);

      }

      public static function mysql_unbuffered_query($query,$link=null){

          if( empty($link) ){
              $link = self::$currObj;
          }

          $r = mysqli_query($link,$query,MYSQLI_USE_RESULT);

          return $r;

      }

  }


?>