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
        text='AES加密与解密文本';
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
        text='请输入待加/解密的Key:';
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
      LinearLayout,
      orientation="vertical",
      layout_width="fill",
      layout_height="fill",
      layout_marginTop="5dp",
      visibility="gone",
      id="ivvalue",
      {
        TextView;
        layout_width='fill';
        layout_height='fill';
        textColor='#FF000000';
        layout_marginLeft='10dp';
        Typeface=Typeface.DEFAULT;
        text='请输入Iv(初始向量)值::';
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
            id='InputIv';
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
        text='请选择加/解密的模式:';
        textSize='14sp';
      };
      {
        LinearLayout;
        orientation='vertical';
        layout_width='fill';
        layout_height='40dp';
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
            Spinner;
            layout_width='fill';
            layout_height='fill';
            id="spin";
          };
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
              id="AESEn",
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
              id="AESDe",
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

items = {"AES/ECB/PKCS5Padding", "AES/ECB/NoPadding","AES/CBC/PKCS5Padding","AES/CBC/NoPadding", "AES/CFB/PKCS5Padding", "AES/CFB/NoPadding", "AES/OFB/PKCS5Padding", "AES/OFB/NoPadding", "AES/CTR/PKCS5Padding", "AES/CTR/NoPadding"}
adapter = ArrayAdapter(activity, android.R.layout.simple_spinner_item, items)
adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
spin.setAdapter(adapter)

spin.onItemSelected = function(parent, view, position, id)
  SelectModel = items[position + 1]
  if SelectModel:find("CBC") or SelectModel:find("CFB") or SelectModel:find("OFB") or SelectModel:find("CTR") then
    ivvalue.setVisibility(0)
  else
    ivvalue.setVisibility(8)
  end
end

function safeEncrypt(...)
  local ok, encrypted = pcall(encrypt, ...)
  if not ok then
    return "加密失败，请检查输入的参数是否正确"
  end
  return encrypted
end

function safeDecrypt(...)
  local ok, decrypted = pcall(decrypt, ...)
  if not ok then
    return "解密失败，请检查输入的参数是否正确"
  end
  return decrypted
end

function encrypt(content, key, iv, mode)
  local String = luajava.bindClass "java.lang.String"
  local SecretKeySpec = luajava.bindClass "javax.crypto.spec.SecretKeySpec"
  local IvParameterSpec = luajava.bindClass "javax.crypto.spec.IvParameterSpec"
  local Cipher = luajava.bindClass "javax.crypto.Cipher"
  local Base64 = luajava.bindClass "android.util.Base64"

  if mode:find("NoPadding") then
    while #content % 16 ~= 0 do
      content = content .. "\0"
    end
  end

  local raw = String(key).getBytes()
  local skey = SecretKeySpec(raw, "AES")
  local cipher = Cipher.getInstance(mode)

  if mode:find("CBC") or mode:find("CFB") or mode:find("OFB") or mode:find("CTR") then
    local ivSpec = IvParameterSpec(String(iv).getBytes())
    cipher.init(Cipher.ENCRYPT_MODE, skey, ivSpec)
  else
    cipher.init(Cipher.ENCRYPT_MODE, skey)
  end

  local byte_content = String(content).getBytes("utf-8")
  local encode_content = cipher.doFinal(byte_content)
  return Base64.encodeToString(encode_content, Base64.DEFAULT)
end

function decrypt(encryptStr, key, iv, mode)
  local String = luajava.bindClass "java.lang.String"
  local SecretKeySpec = luajava.bindClass "javax.crypto.spec.SecretKeySpec"
  local IvParameterSpec = luajava.bindClass "javax.crypto.spec.IvParameterSpec"
  local Cipher = luajava.bindClass "javax.crypto.Cipher"
  local Base64 = luajava.bindClass "android.util.Base64"

  local raw = String(key).getBytes()
  local skey = SecretKeySpec(raw, "AES")
  local cipher = Cipher.getInstance(mode)
  
  if mode:find("CBC") or mode:find("CFB") or mode:find("OFB") or mode:find("CTR")then
    local ivSpec = IvParameterSpec(String(iv).getBytes())
    cipher.init(Cipher.DECRYPT_MODE, skey, ivSpec)
  else
    cipher.init(Cipher.DECRYPT_MODE, skey)
  end
  
  local encode_content = Base64.decode(encryptStr, Base64.DEFAULT)
  local byte_content = cipher.doFinal(encode_content)
  local decrypted = String(byte_content, "utf-8")

  if mode:find("NoPadding") then
    decrypted = decrypted:gsub("%z+$", "")
  end

  return decrypted
end

AESEn.onClick=function()
  local ChooseText = InputText.Text
  local ChooseKey = InputKey.Text
  local ChooseIv = InputIv.Text
  local ResultEn = safeEncrypt(ChooseText, ChooseKey, ChooseIv, SelectModel)
  ResultText.Text = tostring(ResultEn)
end

AESDe.onClick=function()
  local ChooseText = InputText.Text
  local ChooseKey = InputKey.Text
  local ChooseIv = InputIv.Text
  local ResultEn = safeDecrypt(ChooseText, ChooseKey, ChooseIv, SelectModel)
  ResultText.Text = tostring(ResultEn)
end

CopyText.onClick=function()
  local ChooseText = ResultText.Text
  import "android.content.Context"
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(tostring(ChooseText))
  print("复制成功!")
end