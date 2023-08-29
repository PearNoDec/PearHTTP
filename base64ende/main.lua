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
        text='Base64编码与解码';
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
              id="Base64En",
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
              id="Base64De",
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

local b="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

local function enc(data)
  return ((data:gsub('.', function(x)
    local r,b='',x:byte()
    for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
    return r;
  end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
    if (#x < 6) then return '' end
    local c=0
    for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
    return b:sub(c+1,c+1)
  end)..({ '', '==', '=' })[#data%3+1])
end

local function dec(data)
  data = string.gsub(data, '[^'..b..'=]', '')
  return (data:gsub('.', function(x)
    if (x == '=') then return '' end
    local r,f='',(b:find(x)-1)
    for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
    return r;
  end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
    if (#x ~= 8) then return '' end
    local c=0
    for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
    return string.char(c)
  end))
end

Base64En.onClick=function()
  local ChooseText = InputText.Text
  local ResultEn = enc(ChooseText)
  ResultText.Text = ResultEn
end

Base64De.onClick=function()
  local ChooseText = InputText.Text
  local ResultEn = dec(ChooseText)
  ResultText.Text = ResultEn
end

CopyText.onClick=function()
  local ChooseText = ResultText.Text
  import "android.content.Context"
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(tostring(ChooseText))
  print("复制成功!")
end