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
        text='RC4加密与解密';
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
        text='请输入待加/解密的文本:';
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
        text='请输入Key值:';
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
            id='InputKey';
            background='#00ffffff';
            hintTextColor='#FF747474';
            textSize='14sp';
            minLines=1;
            textColor='#333333';
            layout_marginTop='-5dp';
            layout_marginBottom='-5dp';
            Typeface=Typeface.DEFAULT;
            layout_margin='5dp';
            gravity='left|center';
            MaxLines=1;
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
              id="Rc4En",
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
              Text = "加密",
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
              id="Rc4De",
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
              Text = "解密",
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
          text='加/解密后的文本:';
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

local function swap(list, i, j)
  list[i], list[j] = list[j], list[i]
end

local function ksa(key)
  local key_length = #key
  local S = {}
  for i = 0, 255 do
    S[i] = i
  end
  local j = 0
  for i = 0, 255 do
    j = (j + S[i] + key:byte((i % key_length) + 1)) % 256
    swap(S, i, j)
  end
  return S
end

local function prga(S, text)
  local i, j, K = 0, 0, {}
  for l = 1, #text do
    i = (i + 1) % 256
    j = (j + S[i]) % 256
    swap(S, i, j)
    K[l] = string.char(bit32.bxor(text:byte(l), S[(S[i] + S[j]) % 256]))
  end
  return table.concat(K)
end

local function RC4(key, text)
  local S = ksa(key)
  return prga(S, text)
end

local function encrypt(key, text)
  local encrypted = RC4(key, text)
  return toHex(encrypted):upper()
end

local function decrypt(key, encrypted_text)
  local text = fromHex(encrypted_text)
  return RC4(key, text)
end

function toHex(string)
  return (string:gsub(".", function(c)
    return string.format("%02X", c:byte())
  end))
end

function fromHex(hex)
  return (hex:gsub("..", function(cc)
    return string.char(tonumber(cc, 16))
  end))
end

Rc4En.onClick=function()
  local ChooseText = InputText.Text
  local ChooseKey = InputKey.Text
  local ResultEn = encrypt(ChooseKey, ChooseText)
  ResultText.Text = ResultEn
end

Rc4De.onClick=function()
  local ChooseText = InputText.Text
  local ChooseKey = InputKey.Text
  local ResultEn = decrypt(ChooseKey, ChooseText)
  ResultText.Text = ResultEn
end

CopyText.onClick=function()
  local ChooseText = ResultText.Text
  import "android.content.Context"
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(tostring(ChooseText))
  print("复制成功!")
end