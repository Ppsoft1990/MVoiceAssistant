.class public Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "VoiceWakeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceWakeActivity"


# instance fields
.field private mCheckBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private mErrorReceiver:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;

.field private mLayoutShakeOpenSetting:Landroid/view/View;

.field private mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

.field private mTxtViewEnableRuleCurr:Landroid/widget/TextView;

.field private mTxtViewEnableRuleDescMax:Landroid/widget/TextView;

.field private mTxtViewEnableRuleDescMin:Landroid/widget/TextView;

.field private mTxtViewEnableRuleMax:Landroid/widget/TextView;

.field private mTxtViewEnableRuleMin:Landroid/widget/TextView;

.field private mTxtViewEnableTipText:Landroid/widget/TextView;

.field private mTxtViewEnableTipTitle:Landroid/widget/TextView;

.field private sensitiveRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->enableSensitySetting(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;)Lcom/iflytek/base/skin/customView/XCheckBox2;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mCheckBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    return-object v0
.end method

.method private enableSensitySetting(Z)V
    .locals 11
    .param p1, "isEnabled"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_1

    .line 143
    const-string/jumbo v8, "#515151"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 144
    .local v4, "firstColor":I
    const-string/jumbo v8, "#878787"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 145
    .local v6, "sencondColor":I
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableTipTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableTipText:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMin:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleCurr:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMax:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleDescMin:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleDescMax:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02031e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 153
    .local v3, "enableDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 154
    .local v5, "progressDrawableBounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8, v3}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 158
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 159
    .local v7, "thumbDrawableBounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0201dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 162
    .end local v7    # "thumbDrawableBounds":Landroid/graphics/Rect;
    :cond_0
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XSeekBar;->setEnabled(Z)V

    .line 184
    .end local v3    # "enableDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "firstColor":I
    .end local v5    # "progressDrawableBounds":Landroid/graphics/Rect;
    .end local v6    # "sencondColor":I
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string/jumbo v8, "#b6b6b6"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 165
    .local v2, "disableColor":I
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableTipTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableTipText:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMin:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleCurr:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMax:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleDescMin:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleDescMax:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02031d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 173
    .local v1, "diableDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 174
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8, v1}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 177
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 178
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 179
    .restart local v7    # "thumbDrawableBounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0201db

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v8}, Lcom/iflytek/base/skin/customView/XSeekBar;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 182
    .end local v7    # "thumbDrawableBounds":Landroid/graphics/Rect;
    :cond_2
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XSeekBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getMarginLeftBySensitivity(I)I
    .locals 12
    .param p1, "sensitivity"    # I

    .prologue
    .line 133
    int-to-double v8, p1

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double v4, v8, v10

    .line 134
    .local v4, "ratio":D
    invoke-static {p0}, Lhl;->d(Landroid/content/Context;)I

    move-result v1

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    invoke-static {p0, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v1, v8

    int-to-double v2, v1

    .line 135
    .local v2, "parentWidth":D
    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    invoke-static {p0, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    int-to-double v6, v1

    .line 136
    .local v6, "selfWidth":D
    mul-double v8, v4, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v6, v10

    sub-double/2addr v8, v10

    double-to-int v0, v8

    .line 137
    .local v0, "margin":I
    return v0
.end method

.method private getRate()I
    .locals 5

    .prologue
    .line 273
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SPEECH_WAKE_UP_SENSITIVE"

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;F)F

    move-result v1

    .line 275
    .local v1, "real":F
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x41700000    # 15.0f

    sub-float v3, v1, v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 276
    .local v0, "rate":I
    const-string/jumbo v2, "VoiceWakeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "raleRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->setTitleBarVisible(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->setTitleBarBg()V

    .line 76
    const v1, 0x7f0c031f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->setTitleName(I)V

    .line 79
    const v1, 0x7f0b07b0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mLayoutShakeOpenSetting:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mLayoutShakeOpenSetting:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0b07b1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mCheckBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 82
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mCheckBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v2, "stateList.setting_checkbox_states_new"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 83
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mCheckBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    const v1, 0x7f0b07b8

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XSeekBar;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    .line 87
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    const v1, 0x7f0b07b2

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableTipTitle:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0b07b3

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableTipText:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0b07b5

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMin:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0b07b6

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleCurr:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f0b07b7

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMax:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0b07b9

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleDescMin:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0b07ba

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleDescMax:Landroid/widget/TextView;

    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getRate()I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->sensitiveRate:I

    .line 98
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mSeekBarSensitity:Lcom/iflytek/base/skin/customView/XSeekBar;

    iget v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->sensitiveRate:I

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgress(I)V

    .line 99
    iget v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->sensitiveRate:I

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->updateRule(I)V

    .line 101
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mCheckBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1, v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setEnabled(Z)V

    .line 102
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SPEECH_WAKE_UP"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    .line 103
    .local v0, "isOpened":Z
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v1

    invoke-virtual {v1, v4}, Lbbp;->a(Z)V

    .line 105
    const-string/jumbo v1, "VoiceWakeActivity"

    const-string/jumbo v2, "Ivw|initView()-----------true"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mCheckBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 108
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->enableSensitySetting(Z)V

    .line 109
    return-void
.end method

.method private registerErrorReceiver()V
    .locals 3

    .prologue
    .line 297
    new-instance v1, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;-><init>(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mErrorReceiver:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_error_wake"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mErrorReceiver:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;

    invoke-virtual {v1, p0, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 301
    return-void
.end method

.method private setWakeLaunch(Lcom/iflytek/base/skin/customView/XCheckBox2;)V
    .locals 3
    .param p1, "checkBoxOpenSwitch"    # Lcom/iflytek/base/skin/customView/XCheckBox2;

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$1;-><init>(Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;Lcom/iflytek/base/skin/customView/XCheckBox2;)V

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Lpf$a;)V

    .line 244
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_WAKE_UP"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 240
    invoke-virtual {p1, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 241
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->enableSensitySetting(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbbp;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mCheckBoxOpenSwitch:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->setWakeLaunch(Lcom/iflytek/base/skin/customView/XCheckBox2;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x7f0b07b0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f03015c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->initView()V

    .line 68
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->registerErrorReceiver()V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 290
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mErrorReceiver:Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity$WakeErrorReceiver;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 291
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "paramSeekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 210
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->updateRule(I)V

    .line 211
    iput p2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->sensitiveRate:I

    .line 212
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "paramSeekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 205
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStop()V

    .line 283
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbp;->a(Z)V

    .line 284
    const-string/jumbo v0, "VoiceWakeActivity"

    const-string/jumbo v1, "Ivw|onStop()-----------false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "paramSeekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 199
    const-string/jumbo v0, "VoiceWakeActivity"

    const-string/jumbo v1, "stop touch"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->sensitiveRate:I

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->updateSensitivity(I)V

    .line 201
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method protected updateRule(I)V
    .locals 7
    .param p1, "sensitivity"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 113
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleCurr:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->getMarginLeftBySensitivity(I)I

    move-result v0

    .line 115
    .local v0, "marginLeft":I
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {p0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    add-int/2addr v0, v2

    .line 116
    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleCurr:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleCurr:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMin:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :goto_0
    const/16 v2, 0x5a

    if-le p1, v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMax:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_1
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMin:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/VoiceWakeActivity;->mTxtViewEnableRuleMax:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateSensitivity(I)V
    .locals 6
    .param p1, "sensitivity"    # I

    .prologue
    .line 258
    const-string/jumbo v1, "VoiceWakeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSensitivity() | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 261
    :cond_0
    const/high16 v0, 0x41b00000    # 22.0f

    .line 265
    .local v0, "saveSensitivity":F
    :goto_0
    const-string/jumbo v1, "VoiceWakeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save sensitive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    float-to-int v1, v0

    sput v1, Ljz;->a:I

    .line 267
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SPEECH_WAKE_UP_SENSITIVE"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;F)V

    .line 268
    return-void

    .line 263
    .end local v0    # "saveSensitivity":F
    :cond_1
    rsub-int/lit8 v1, p1, 0x64

    int-to-double v2, v1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    add-double/2addr v2, v4

    double-to-float v0, v2

    .restart local v0    # "saveSensitivity":F
    goto :goto_0
.end method
