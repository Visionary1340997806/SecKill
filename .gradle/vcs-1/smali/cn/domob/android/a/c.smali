<?xml version="1.0" encoding="utf-8" standalone="yes" ?>
<Window size="778,424" caption="0,0,0,48" roundcorner="4,4" >

  <Include source="font_localization.xml" />

  <Default name="VScrollBar" value="thumbnormalimage=&quot;file='../common/images/common/scrollbar_normal.png' scale9='0,7,0,7'&quot; thumbhotimage=&quot;file='../common/images/common/scrollbar_hot.png' scale9='0,7,0,7'&quot; width=&quot;7&quot; thumbpushedimage=&quot;file='../common/images/common/scrollbar_hot.png' scale9='0,7,0,7'&quot; showbutton1=&quot;false&quot; showbutton2=&quot;false&quot;" />
  <VBox>
    <HBox name="header" height="48" bkcolor="#FFF0F3F5" childvalign="vcenter" inset="30,0,0,0">
      <Label name="title" text="%{bat_upload_contacts_title}" height="20" autocalcwidth="true" visible="true" font="10" textcolor="#FF191F25"/>
      <Control />
      <Button text="&#xe6f2;" name="close_btn" width="20" height="20" font="9" padding="0,0,27,0" textcolor="#FF7D8790" hottextcolor="#FF3296FA" pushedtextcolor="#FFBFE5FF"/>
    </HBox>

    <VBox bkcolor="0xFFFFFFFF">
      <VBox name="upload_page" visible="true">
        <VBox padding="0,106,0,0" childalign="center" height="62">
          <Control />
          <Control bkimage="../common/images/filelogo/excel.png" enabled="true" mouse="false" width="62" height="62"  />
          <Control />
        </VBox>

        <VBox  childalign="center" height="300">
          <Label name="upload_page_filename" text="" height="17"  padding="0,20,0,0" font="12" textcolor="#7E8185" align="center"/>
          
          <Progress name="upload_progress" padding="0,10,0,10" visible="true" width="240" height="3" bkimage="../common/images/common/progressback.png" foreimage="../common/images/common/progressfore.png" value="10"/>
            
          <Label name="upload_info" text="%{bat_upload_contacts_uplading}" align="center" height="25"  font="0" textcolor="#191F25"/>
        </VBox>

      </VBox>

     
      <VBox name="error_page" visible="false">
         <VBox padding="0,98,0,0" childalign="center" height="48">
          <Control />
          <Control bkimage="../common/images/common/ic_warning.png" enabled="true" mouse="false" width="48" height="48"  />
          <Control />
        </VBox>

        <VBox  childalign="center" height="300">
          <Label text="%{bat_upload_contacts_failed}" name="error_page_text1" height="17" font="10" padding="0,20,0,6" textcolor="#191F25" align="center"/>
          <Label text="%{bat_upload_contacts_failed_des}" name="error_page_text2" height="17" padding="0,0,0,45"  font="12" textcolor="#7E8185" align="center"/>
          <Button name="error_page_btn" text="%{bat_upload_contacts_i_know}"  font="1" width="188" height="36"  textcolor="#FFFFFFFF" hottextcolor="#FFFFFFFF" pushedtextcolor="#FFFFFFFF"  disabledtextcolor="#FFCCCCCC" align="center" normalimage="file='../common/images/common/btn_normal.png' corner='8,8,9,9'" hotimage="file='../common/images/common/btn_hover.png' corner='8,8,9,9'" pushedimage="file='../common/images/common/btn_pushed.png' corner='8,8,9,9'" disabledimage="file='../common/images/login/btn_disable.png' corner='8,8,9,9'" />
        </VBox>
      </VBox>

         <VBox name="error_detail_page" visible="false">
          <VBox height="101">
            <HBox padding="56,39,56,0" width="400">
            <Control bkimage="../common/images/common/ic_warning.png"   enabled="true" mouse="false" width="32" height="32"  />
            <VBox >
              <Label text="%{bat_upload_contacts_success_section}" name="error_detail_page_text1" height="25" font="10" padding="20,0,0,6" textcolor="#191F25" align="left"/>
              <Label text="%{bat_upload_contacts_error_des}" name="error_detail_page_text2" height="17" padding="20,0,0,0"  font="12" textcolor="#7E8185" align="left"/>
            </VBox>
            </HBox>
        </VBox>
        <VBox childalign="center" height="182" padding="56,0,56,0" inset="1,1,1,1" bordersize="1,1,1,1" bordercolor="#FFE3E4E4">
              <List name="error_detail_page_list" bkcolor="#FFFFFFFF" height="182"  itemshowhtml="true" vscrollbar="true" headerbkimage="file='../common/images/common/list_header_bg.png'" itemalign="center" itembkcolor="#FFFFFFFF" itemaltbk="true" hscrollbar="false" menu="false">
              <ListHeader height="46" menu="false">
                <ListHeaderItem text="%{bat_upload_contacts_list_name}" font="1" width="180" hotimage="file='../common/images/common/list_header_bg.png'" pushedimage="file='../common/images/common/list_header_bg.png'" sepimage="file='../common/images/common/list_header_sep.png'" sepwidth="1"/>
                <ListHeaderItem text="%{bat_upload_contacts_list_phone}" font="1" width="180" hotimage="file='../common/images/common/list_header_bg.png'" pushedimage="file='../common/images/common/list_header_bg.png'" sepimage="file='../common/images/common/list_header_sep.png'" sepwidth="1"/>
                <ListHeaderItem text="%{bat_upload_contacts_list_error_msg}" font="1" width="307" hotimage="file='../common/images/common/list_header_bg.png'" pushedimage="file='../common/images/common/list_header_bg.png'" sepimage="file='../common/images/common/list_header_sep.png'" sepwidth="1"/>
              </ListHeader>
              </List>
        </VBox>
        <VBox height="36" childalign="center" padding="0,30,0,0" >
           <Button name="error_detail_page_btn" text="%{bat_upload_contacts_i_know}"  font="1" width="188" height="36"  textcolor="#FFFFFFFF" hottextcolor="#FFFFFFFF" pushedtextcolor="#FFFFFFFF" disabledtextcolor="#FFCCCCCC" align="center" normalimage="file='../common/images/common/btn_normal.png' corner='8,8,9,9'" hotimage="file='../common/images/common/btn_hover.png' corner='8,8,9,9'" pushedimage="file='../common/images/common/btn_pushed.png' corner='8,8,9,9'" disabledimage="file='../common/images/login/btn_disable.png' corner='8,8,9,9'"/>
        </VBox>
      </VBox>

      <VBox name="success_page" visible="false">
        <VBox padding="0,112,0,0" childalign="center" height="48">
          <Control />
          <Control bkimage="../common/images/common/ic_success.png" enabled="true" mouse="false" width="48" height="48"  />
          <Control />
        </VBox>
        <VBox  childalign="center" height="300">
          <Label text="%{bat_upload_contacts_success}" name="success_page_text" height="17"  padding="0,20,0,45" font="10" textcolor="#191F25" align="center"/>
          <Button name="success_page_btn" text="%{bat_upload_contacts_ok}"  font="1" width="188" height="36"  textcolor="#FFFFFFFF" hottextcolor="#FFFFFFFF" pushedtextcolor="#FFFFFFFF" disabledtextcolor="#FFCCCCCC" align="center" normalimage="file='../common/images/common/btn_normal.png' corner='8,8,9,9'" hotimage="file='../common/images/common/btn_hover.png' corner='8,8,9,9'" pushedimage="file='../common/images/common/btn_pushed.png' corner='8,8,9,9'" disabledimage="file='../common/images/login/btn_disable.png' corner='8,8,9,9'" />
        </VBox>
      </VBox>


       <VBox name="overflow_page" visible="false">
         <VBox padding="0,98,0,0" childalign="center" height="48">
          <Control />
          <Control bkimage="../common/images/common/ic_warning.png" enabled="true" mouse="false" width="48" height="48"  />
          <Control />
        </VBox>

        <VBox  childalign="center" height="300">
          <Label text="%{bat_upload_contacts_failed}" name="overflow_page_text1" height="17" font="10" padding="0,20,0,6" textcolor="#191F25" align="center"/>
          <Label text="%{bat_upload_contacts_failed_des}" name="overflow_page_text2" height="17" padding="0,0,0,45"  font="12" textcolor="#7E8185" align="center"/>
          <Button name="error_page_btn" text="%{bat_upload_contacts_i_know}"  font="1" width="188" height="36"  textcolor="#FFFFFFFF" hottextcolor="#FFFFFFFF" pushedtextcolor="#FFFFFFFF"  disabledtextcolor="#FFCCCCCC" align="center" normalimage="file='../common/images/common/btn_normal.png' corner='8,8,9,9'" hotimage="file='../common/images/common/btn_hover.png' corner='8,8,9,9'" pushedimage="file='../common/images/common/btn_pushed.png' corner='8,8,9,9'" disabledimage="file='../common/images/login/btn_disable.png' corner='8,8,9,9'" />
        </VBox>
      </VBox>

    </VBox>

  </VBox>

</Window>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    