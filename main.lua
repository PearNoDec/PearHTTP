require"import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "com.androlua.Http"
import "android.graphics.Typeface"
import "android.graphics.drawable.ColorDrawable"
import "com.google.android.material.bottomsheet.BottomSheetDialog"
import "com.google.android.material.card.MaterialCardView"
import "android.graphics.Color"
import "androidx.appcompat.app.AlertDialog"
import "android.app.AlertDialog"
import "com.google.android.material.textview.MaterialTextView"
import "com.google.android.material.shape.ShapeAppearanceModel"
import "com.google.android.material.shape.*"

local bindClass = luajava.bindClass
local CoordinatorLayout = bindClass "androidx.coordinatorlayout.widget.CoordinatorLayout"
local MaterialButton = bindClass "com.google.android.material.button.MaterialButton"
local ColorUtils = bindClass "androidx.core.graphics.ColorUtils"
local ColorStateList = bindClass "android.content.res.ColorStateList"
local rippleColor = ColorUtils.blendARGB(0xffffffff, 0xffffffff, 0.32)

Tririum={
  LinearLayout,
  orientation='vertical',
  layout_width='fill',
  layout_height='fill',
  background='#FFFFFFFF',
  {
    LinearLayout,
    orientation='vertical',
    layout_width='fill',
    layout_height='56dp',
    gravity='center',
    background='#FFFFFFFF',
    {
      TextView;
      layout_width='fill';
      layout_height='wrap';
      gravity='center';
      textColor='#FF000000';
      text='PearHTTP · 网络请求测试工具';
      textSize='16sp';
      id="JoinTencent";
    };
  };
  {
    LinearLayout,
    orientation="vertical",
    layout_width="fill",
    layout_height="wrap",
    {
      LinearLayout,
      orientation='horizontal',
      layout_width='fill',
      layout_height='50dp',
      background='#FFFFFFFF',
      {
        LinearLayout,
        orientation='vertical',
        layout_width='180dp',
        layout_height='50dp',
        background='',
        layout_marginLeft='10dp',
        layout_weight=1,
        {
          CoordinatorLayout,
          layout_width="match",
          layout_height="match",
          {
            MaterialButton,
            id="choosemodels",
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
            Text = "GET",
            TextColor = 0xffffffff,
          },
        }
      };
      {
        LinearLayout,
        orientation='horizontal',
        layout_width='fill',
        layout_height='50dp',
        layout_marginLeft='10dp',
        layout_marginRight='10dp',
        layout_weight=1,
        {
          LinearLayout;
          orientation='vertical';
          layout_width='fill';
          layout_height='fill';
          background='#88D6D6D6';
          layout_weight=1,
          layout_marginRight='5dp',
          padding='3dp';
          {
            LinearLayout;
            orientation='vertical';
            layout_width='fill';
            layout_height='fill';
            background='#ffffff';
            {
              EditText;
              layout_width='fill';
              layout_height='fill';
              id='InputUrl';
              Hint='请输入访问URL';
              hintTextColor='#FF747474';
              textSize='14sp';
              background='#00ffffff';
              singleLine=true;
              textColor='#333333';
              gravity='center';
            },
          };
        };
        {
          LinearLayout;
          orientation='vertical';
          layout_width='150dp';
          layout_height='50dp';
          background='#ffffff';
          layout_weight=1,
          layout_marginLeft='5dp',
          {
            CoordinatorLayout,
            layout_width="match",
            layout_height="match",
            {
              MaterialButton,
              id="SendUrl",
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
              Text = "访问",
              TextColor = 0xffffffff,
            },
          };
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
        text='协议请求头(key:value):';
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
            id='HeadersEdit';
            background='#00ffffff';
            hintTextColor='#FF747474';
            textSize='14sp';
            minLines=3;
            textColor='#333333';
            layout_margin='5dp';
            gravity='left|center';
            MaxLines=3;
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
        text='POST参数:';
        textSize='14sp';
      };
      {
        LinearLayout;
        orientation='vertical';
        layout_width='fill';
        layout_height='fill';
        background='#88D6D6D6';
        layout_marginLeft='10dp';
        padding='3dp';
        layout_marginRight='10dp';
        layout_marginTop="5dp",
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
            id='PostEdit';
            background='#00ffffff';
            hintTextColor='#FF747474';
            textSize='14sp';
            minLines=2;
            textColor='#333333';
            layout_margin='5dp';
            gravity='left|center';
            MaxLines=2;
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
        text='Cookie参数:';
        textSize='14sp';
      };
      {
        LinearLayout;
        orientation='vertical';
        layout_width='fill';
        layout_height='fill';
        background='#88D6D6D6';
        layout_marginLeft='10dp';
        padding='3dp';
        layout_marginRight='10dp';
        layout_marginTop="5dp",
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
            id='CookieEdit';
            background='#00ffffff';
            hintTextColor='#FF747474';
            textSize='14sp';
            minLines=2;
            textColor='#333333';
            layout_margin='5dp';
            gravity='left|center';
            MaxLines=2;
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
        id='ResultCode';
        text='返回结果:';
        textSize='14sp';
      };
      {
        LinearLayout;
        orientation='vertical';
        layout_width='fill';
        layout_height='fill';
        background='#88D6D6D6';
        layout_marginLeft='10dp';
        padding='3dp';
        layout_marginRight='10dp';
        layout_marginTop="5dp",
        {
          ScrollView;
          layout_width='fill';
          layout_height='fill';
          verticalScrollBarEnabled=false;
          overScrollMode=View.OVER_SCROLL_NEVER,
          {
            LinearLayout;
            orientation='vertical';
            layout_width='fill';
            layout_height='fill';
            background='#ffffffff';
            {
            TextView;
            layout_width='fill';
            layout_height='fill';
            text='';
            textSize='14sp';
            textColor='#333333';
            id='ResultEdit';
            textIsSelectable=true;
            layout_margin="5dp";
            Typeface=Typeface.DEFAULT;
            gravity='left';
            };
          };
        };
      };
    };
  };
}
if activity.packageName=="net.fusionapp" then
  R=luajava.bindClass"net.fusionapp.R"
 else
  R=luajava.bindClass"net.fusionapp.core.R"
end

function 导航栏高度()
  local resourceId = 0
  local rid = activity.getResources().getIdentifier("config_showNavigationBar", "bool", "android")
  if (rid ~= 0) then
    resourceId = activity.getResources().getIdentifier("navigation_bar_height", "dimen", "android")
    return activity.getResources().getDimensionPixelSize(resourceId)
   else
    return 0
  end
end

function dp2px(n)
  return n*activity.resources.displayMetrics.scaledDensity+.5
end

function split(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
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

models={
  MaterialCardView,
  layout_height=dp2px(240)+导航栏高度(),
  layout_width="fill",
  strokeColor=0,
  strokeWidth=0,
  Elevation=0,
  cardBackgroundColor=0xffffffff,
  shapeAppearanceModel=ShapeAppearanceModel.builder()
  .setTopLeftCorner(RoundedCornerTreatment())
  .setTopLeftCornerSize(RelativeCornerSize(0.1))
  .setTopRightCorner(RoundedCornerTreatment())
  .setTopRightCornerSize(RelativeCornerSize(0.1))
  .build(),
  {LinearLayout,
    Orientation=1,
    layout_width="fill",
    layout_height="fill",
    layout_margin="32dp",
    {MaterialTextView,
      textColor=0xff000000,
      text="选择请求模式…",
      textSize="20sp",
      textStyle="bold",
    },
    {LinearLayout,
      Orientation=0,
      layout_width="fill",
      layout_height="wrap",
      layout_marginTop="24dp",

      {MaterialCardView,
        id="GET",
        layout_weight=1,
        cardBackgroundColor=0xFFF8F8F8,
        strokeColor=0,
        strokeWidth=0,
        Elevation=0,
        radius="12dp",
        layout_height="50dp",
        layout_width="90dp",
        {FrameLayout,
          layout_height="fill",
          layout_width="fill",
          {LinearLayout,
            layout_height="fill",
            layout_width="fill",
            gravity="center",
            Orientation=1,

            {MaterialTextView,
              gravity="center",
              textColor=0xff000000,
              text="Get",
              textSize="14sp",
            },
          },
          {LinearLayout,
            layout_height="fill",
            layout_width="fill",
            gravity="bottom",
            Orientation=1,

            {MaterialCardView,
              id="GETOK",
              Visibility=8,
              layout_gravity="right",
              cardBackgroundColor=0xff000000,
              strokeColor=0,
              strokeWidth=0,
              Elevation=0,
              layout_height="24dp",
              layout_width="24dp",
              shapeAppearanceModel=ShapeAppearanceModel.builder()
              .setTopLeftCorner(RoundedCornerTreatment())
              .setTopLeftCornerSize(RelativeCornerSize(0.5))
              .build(),
            },
          },
        },
      },

      {MaterialCardView,
        id="POST",
        layout_weight=1,
        layout_marginLeft="12dp",
        cardBackgroundColor=0xFFF8F8F8,
        strokeColor=0,
        strokeWidth=0,
        Elevation=0,
        radius="12dp",
        layout_height="50dp",
        layout_width="90dp",
        {FrameLayout,
          layout_height="fill",
          layout_width="fill",
          {LinearLayout,
            layout_height="fill",
            layout_width="fill",
            gravity="center",
            Orientation=1,
            {MaterialTextView,
              gravity="center",
              textColor=0xff000000,
              text="Post",
              textSize="14sp",
            },
          },
          {LinearLayout,
            layout_height="fill",
            layout_width="fill",
            gravity="bottom",
            Orientation=1,
            {MaterialCardView,
              Visibility=8,
              id="POSTOK",
              layout_gravity="right",
              cardBackgroundColor=0xff000000,
              strokeColor=0,
              strokeWidth=0,
              Elevation=0,
              layout_height="24dp",
              layout_width="24dp",
              shapeAppearanceModel=ShapeAppearanceModel.builder()
              .setTopLeftCorner(RoundedCornerTreatment())
              .setTopLeftCornerSize(RelativeCornerSize(0.5))
              .build(),
            },
          },
        },
      },
    },
    {MaterialCardView,
      id="Cancel",
      layout_marginTop="24dp",
      cardBackgroundColor=0xFFF8F8F8,
      strokeColor=0,
      strokeWidth=0,
      Elevation=0,
      radius="12dp",
      layout_height="54dp",
      layout_width="fill",
      {MaterialTextView,
        textColor=0xff000000,
        textStyle="bold",
        textSize="16sp",
        layout_gravity="center",
        text="取消",
      },
    },
  },
}
activity.setContentView(loadlayout(Tririum))

choosemodels.onClick=function()
  bsd=NewBottomSheetDialog(models).show()
  task(1,function()
    bsd.getBehavior().setState(6)
  end)

  GET.onClick=function(v)
    choosemodels.Text="GET"
    bsd.dismiss()
  end
  POST.onClick=function(v)
    choosemodels.Text="POST"
    bsd.dismiss()
  end
  Cancel.onClick=function()
    bsd.dismiss()
  end
end

function printTable(t)
    for k, v in pairs(t) do
        print(k .. ": " .. v)
    end
end

SendUrl.onClick=function()
  local sendurl = InputUrl.Text
  if sendurl == "" then
    print("请输入访问URL…")
    return
  end
  local Cookie = CookieEdit.Text
  local models = choosemodels.Text
  local text = HeadersEdit.Text
  local PostParams = PostEdit.Text
  local lines = split(text, '\n')
  local useragent = {["User-Agent"]="Mozilla/5.0 (Linux, Android 9, STF-AL00 Build/HUAWEISTF-AL00, wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.99 Mobile Safari/537.36"}
  for i, line in ipairs(lines) do
    local key_value = split(line, ':')
    local key = string.gsub(key_value[1], "^%s*(.-)%s*$", "%1")
    local value = string.gsub(key_value[2], "^%s*(.-)%s*$", "%1")
    useragent[key] = value
  end
  if Cookie == "" then
    local Cookie = nil
    else
    local Cookie = Cookie
  end
  if models == "GET" then
    Http.get(sendurl,Cookie,"utf-8",useragent,function(code, content)
        ResultCode.Text = "返回结果:成功获取    ".."状态码:"..code
        ResultEdit.Text = content
      end
    )
    else
      Http.post(sendurl,PostParams,Cookie,"utf-8",useragent,function(code, content)
        ResultCode.Text = "返回结果:成功获取    ".."状态码:"..code
        ResultEdit.Text = content
      end
    )
  end
end