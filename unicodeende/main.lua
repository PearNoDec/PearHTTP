require"import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.graphics.Color"
import "android.graphics.Typeface"

local bindClass = luajava.bindClass
local CoordinatorLayout = bindClass "androidx.coordinatorlayout.widget.CoordinatorLayout"
local MaterialButton = bindClass "com.google.android.material.button.MaterialButton"
local ColorUtils = bindClass "androidx.core.graphics.ColorUtils"
local ColorStateList = bindClass "android.content.res.ColorStateList"
local rippleColor = ColorUtils.blendARGB(0xffffffff, 0xffffffff, 0.32)

Tririum={
  ScrollView;
  layout_width='fill';
  layout_height='fill';
  verticalScrollBarEnabled=false;
  overScrollMode=View.OVER_SCROLL_NEVER,
  {
    LinearLayout,
    orientation='vertical',
    layout_width='fill',
    layout_height='fill',
    background='#FFFFFFFF',
    {
      LinearLayout,
      orientation='horizontal',
      layout_width='fill',
      layout_height='56dp',
      gravity='center',
      background='#FFFFFFFF',
      layout_marginTop="-5dp",
      {
        TextView;
        layout_width='fill';
        layout_height='wrap';
        gravity='center';
        Typeface=Typeface.DEFAULT;
        textColor='#FF000000';
        text='Unicode解码与编码';
        textSize='16sp';
        id="JoinTencent";
      };
    };
    {
      LinearLayout,
      orientation="vertical",
      layout_width="fill",
      layout_height="fill",
      layout_marginTop="5dp",
      {
        TextView;
        layout_width='fill';
        layout_height='fill';
        textColor='#FF000000';
        layout_marginLeft='10dp';
        Typeface=Typeface.DEFAULT;
        text='请输入待编/解码的文本:';
        textSize='14sp';
      };
      {
        LinearLayout;
        orientation='vertical';
        layout_width='fill';
        layout_height='fill';
        background='#88D6D6D6';
        layout_marginLeft='10dp';
        layout_marginRight='10dp';
        layout_marginTop="5dp",
        padding='3dp';
        {
          LinearLayout;
          orientation='vertical';
          layout_width='fill';
          layout_height='fill';
          background='#ffffffff';
          {
            EditText;
            layout_width='fill';
            layout_height='fill';
            id='InputText';
            background='#00ffffff';
            hintTextColor='#FF747474';
            textSize='14sp';
            minLines=3;
            textColor='#333333';
            layout_marginTop='-5dp';
            layout_marginBottom='-5dp';
            Typeface=Typeface.DEFAULT;
            layout_margin='5dp';
            gravity='left|center';
            MaxLines=5;
          }
        };
      };
    };
    {
      LinearLayout;
      orientation='vertical';
      layout_width='fill';
      layout_height='fill';
      background='#ffffff';
      id="ShowTools";
      {
        LinearLayout;
        orientation='horizontal';
        layout_width='fill';
        layout_height='fill';
        background='#ffffff';
        layout_weight=1,
        {
          LinearLayout;
          orientation='vertical';
          layout_width='fill';
          layout_height='50dp';
          background='#ffffff';
          layout_marginLeft='10dp';
          layout_marginRight='10dp';
          layout_weight=1,
          {
            CoordinatorLayout,
            layout_width="match",
            layout_height="match",
            {
              MaterialButton,
              id="UnicodeEn",
              layout_width='fill';
              layout_height='fill';
              layout_gravity = "center",
              AllCaps = false,
              BackgroundTintList = ColorStateList({
                {
                  android.R.attr.state_selected,
                  android.R.attr.state_hovered,
                  android.R.attr.state_focused
                },
                {}
              },
              {0x881359CE, 0x881359CE, 0x881359CE}),
              Clickable = true,
              CornerRadius = "10dp",
              Elevation = 0,
              RippleColor = ColorStateList({
                {
                  android.R.attr.state_selected,
                  android.R.attr.state_hovered,
                  android.R.attr.state_focused},
                {},
              },
              {rippleColor, rippleColor, rippleColor}),
              Text = "编码",
              TextColor = 0xffffffff,
            },
          };
        };
        {
          LinearLayout;
          orientation='vertical';
          layout_width='fill';
          layout_marginLeft='10dp';
          layout_marginRight='10dp';
          layout_height='50dp';
          background='#ffffff';
          layout_weight=1,
          {
            CoordinatorLayout,
            layout_width="match",
            layout_height="match",
            {
              MaterialButton,
              id="UnicodeDe",
              layout_gravity = "center",
              layout_width='fill';
              layout_height='fill';
              AllCaps = false,
              BackgroundTintList = ColorStateList({
                {
                  android.R.attr.state_selected,
                  android.R.attr.state_hovered,
                  android.R.attr.state_focused
                },
                {}
              },
              {0x881359CE, 0x881359CE, 0x881359CE}),
              Clickable = true,
              CornerRadius = "10dp",
              Elevation = 0,
              RippleColor = ColorStateList({
                {
                  android.R.attr.state_selected,
                  android.R.attr.state_hovered,
                  android.R.attr.state_focused},
                {},
              },
              {rippleColor, rippleColor, rippleColor}),
              Text = "解码",
              TextColor = 0xffffffff,
            },
          };
        };
      };
      {
        LinearLayout,
        orientation="vertical",
        layout_width="fill",
        layout_height="fill",
        layout_marginTop="5dp",
        {
          TextView;
          layout_width='fill';
          layout_height='fill';
          textColor='#FF000000';
          layout_marginLeft='10dp';
          Typeface=Typeface.DEFAULT;
          text='编/解码后的文本:';
          textSize='14sp';
        };
        {
          LinearLayout;
          orientation='vertical';
          layout_width='fill';
          layout_height='fill';
          background='#88D6D6D6';
          layout_marginLeft='10dp';
          layout_marginRight='10dp';
          layout_marginTop="5dp",
          padding='3dp';
          {
            LinearLayout;
            orientation='vertical';
            layout_width='fill';
            layout_height='fill';
            background='#ffffffff';
            {
              EditText;
              layout_width='fill';
              layout_height='fill';
              id='ResultText';
              background='#00ffffff';
              hintTextColor='#FF747474';
              textSize='14sp';
              minLines=3;
              textColor='#333333';
              layout_marginTop='-5dp';
              layout_marginBottom='-5dp';
              Typeface=Typeface.DEFAULT;
              layout_margin='5dp';
              gravity='left|center';
            }
          };
        };
      };
    };
    {
      LinearLayout;
      orientation='vertical';
      layout_width='fill';
      layout_marginLeft='10dp';
      layout_marginRight='10dp';
      layout_height='50dp';
      background='#ffffff';
      layout_weight=1,
      {
        CoordinatorLayout,
        layout_width="match",
        layout_height="match",
        {
          MaterialButton,
          id="CopyText",
          layout_gravity = "center",
          layout_width='fill';
          layout_height='fill';
          AllCaps = false,
          BackgroundTintList = ColorStateList({
            {
              android.R.attr.state_selected,
              android.R.attr.state_hovered,
              android.R.attr.state_focused
            },
            {}
          },
          {0x881359CE, 0x881359CE, 0x881359CE}),
          Clickable = true,
          CornerRadius = "10dp",
          Elevation = 0,
          RippleColor = ColorStateList({
            {
              android.R.attr.state_selected,
              android.R.attr.state_hovered,
              android.R.attr.state_focused},
            {},
          },
          {rippleColor, rippleColor, rippleColor}),
          Text = "复制结果",
          TextColor = 0xffffffff,
        },
      };
    };
  };

}

if activity.packageName=="net.fusionapp" then
  R=luajava.bindClass"net.fusionapp.R"
 else
  R=luajava.bindClass"net.fusionapp.core.R"
end

function NewBottomSheetDialog(dialog_layout)
  mBottomSheetDialog=BottomSheetDialog(this,R.style.Theme_Design_BottomSheetDialog)
  mBottomSheetDialog.setContentView(loadlayout(dialog_layout)).show()
  mBottomSheetDialog.getWindow().findViewById(R.id.design_bottom_sheet)
  .setBackgroundResource(android.R.color.transparent)
  if Build.VERSION.SDK_INT >= 21 then
    local window = mBottomSheetDialog.getWindow()
    window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
    window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
    window.setStatusBarColor(Color.TRANSPARENT);
    window.addFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);
    window.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
   else
    local window = mBottomSheetDialog.getWindow()
    window.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
    window.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
  end
  return mBottomSheetDialog
end

activity.setContentView(loadlayout(Tririum))

function utf8_to_unicode(utf8_str)
  local unicode_str = ""
  local i = 1
  local len = string.len(utf8_str)
  while i <= len do
    local byte = string.byte(utf8_str, i)
    if byte < 128 then
      unicode_str = unicode_str .. string.format("\\u%04x", byte)
      i = i + 1
     elseif byte >= 192 and byte < 224 then
      local byte2 = string.byte(utf8_str, i + 1)
      local unicode = bit32.bor(bit32.lshift(bit32.band(byte, 31), 6), bit32.band(byte2, 63))
      unicode_str = unicode_str .. string.format("\\u%04x", unicode)
      i = i + 2
     elseif byte >= 224 then
      local byte2 = string.byte(utf8_str, i + 1)
      local byte3 = string.byte(utf8_str, i + 2)
      local unicode = bit32.bor(bit32.lshift(bit32.band(byte, 15), 12), bit32.lshift(bit32.band(byte2, 63), 6), bit32.band(byte3, 63))
      unicode_str = unicode_str .. string.format("\\u%04x", unicode)
      i = i + 3
    end
  end
  return unicode_str
end

function unicode_to_utf8(unicode_str)
  local utf8_str = ""
  for unicode in string.gmatch(unicode_str, "\\u(%x%x%x%x)") do
    unicode = tonumber(unicode, 16)

    if unicode < 128 then
      utf8_str = utf8_str .. string.char(unicode)
     elseif unicode < 2048 then
      utf8_str = utf8_str .. string.char(192 + bit32.rshift(unicode, 6), 128 + bit32.band(unicode, 63))
     else
      utf8_str = utf8_str .. string.char(224 + bit32.rshift(unicode, 12), 128 + bit32.band(bit32.rshift(unicode, 6), 63), 128 + bit32.band(unicode, 63))
    end
  end

  return utf8_str
end

UnicodeEn.onClick=function()
  local ChooseText = InputText.Text
  local ResultEn = utf8_to_unicode(ChooseText)
  ResultText.Text = ResultEn
end

UnicodeDe.onClick=function()
  local ChooseText = InputText.Text
  local ResultEn = unicode_to_utf8(ChooseText)
  ResultText.Text = ResultEn
end

CopyText.onClick=function()
  local ChooseText = ResultText.Text
  import "android.content.Context"
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(tostring(ChooseText))
  print("复制成功!")
end