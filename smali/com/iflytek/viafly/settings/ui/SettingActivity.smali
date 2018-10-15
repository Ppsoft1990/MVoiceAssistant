.class public final Lcom/iflytek/viafly/settings/ui/SettingActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
.source "SettingActivity.java"


# static fields
.field public static final ACTION_CALL_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.action.CALL_SETTING"

.field public static final ACTION_CARD_AUDIO_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.setting.card.AUDIO"

.field public static final ACTION_CARD_CMCC_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.setting.card.CMCC"

.field public static final ACTION_CARD_FOOD_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.setting.card.FOOD"

.field public static final ACTION_CARD_LISTENBOOK_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.setting.card.LISTENBOOK"

.field public static final ACTION_CARD_MOVIES_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.setting.card.MOVIES"

.field public static final ACTION_CARD_MUSIC_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.setting.card.MUSIC"

.field public static final ACTION_CARD_NEWS_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.setting.card.NEWS"

.field public static final ACTION_CARD_WEATHER_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.setting.card.WEATHER"

.field public static final ACTION_NOVEL_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.action.NOVEL_SETTING"

.field public static final ACTION_QUICK_NOTIFICATION_TOOL_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.action.ACTION_QUICK_NOTIFICATION_TOOL_SETTING"

.field public static final ACTION_QUICK_START_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.action.QUICK_START_SETTING"

.field public static final ACTION_SMS_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.action.SMS_SETTING"

.field public static final ACTION_SPECIFIC_BROADCAST_SETTING:Ljava/lang/String; = "com.iflytek.cmcc.action.SPECIFIC_BROADCAST_SETTING"

.field public static final REQUEST_CATEGORY_MANAGER:I = 0x3e9


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;-><init>()V

    .line 36
    const-string/jumbo v0, "SettingActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private performIntent(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string/jumbo v14, "SettingActivity"

    const-string/jumbo v15, "performIntent"

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-nez p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v8

    .line 107
    .local v8, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v14, "com.iflytek.cmcc.action.CALL_SETTING"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 110
    new-instance v11, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {v11}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;-><init>()V

    .line 111
    .local v11, "newFragment":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v14, "action"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {v11, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v11}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto :goto_0

    .line 115
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v11    # "newFragment":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    :cond_1
    const-string/jumbo v14, "com.iflytek.cmcc.action.SMS_SETTING"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 116
    new-instance v11, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {v11}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;-><init>()V

    .line 117
    .restart local v11    # "newFragment":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 118
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string/jumbo v14, "action"

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v11, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v11}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto :goto_0

    .line 121
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v11    # "newFragment":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    :cond_2
    const-string/jumbo v14, "com.iflytek.cmcc.action.SPECIFIC_BROADCAST_SETTING"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 122
    new-instance v11, Ladl;

    invoke-direct {v11}, Ladl;-><init>()V

    .line 123
    .local v11, "newFragment":Ladl;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 124
    .restart local v2    # "args":Landroid/os/Bundle;
    invoke-virtual {v11, v2}, Ladl;->setArguments(Landroid/os/Bundle;)V

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v11}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 130
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v14

    .line 131
    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 129
    invoke-static {v14}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v14

    const-string/jumbo v15, "FC01023"

    const-string/jumbo v16, "spcl_broadcast_view"

    .line 132
    invoke-virtual/range {v14 .. v16}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v11    # "newFragment":Ladl;
    :cond_3
    const-string/jumbo v14, "com.iflytek.cmcc.action.ACTION_ENTRANCE_OPERATION_MORE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 136
    new-instance v11, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;

    invoke-direct {v11}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;-><init>()V

    .line 137
    .local v11, "newFragment":Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 138
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string/jumbo v14, "action"

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v11, v2}, Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v11}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 141
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v11    # "newFragment":Lcom/iflytek/viafly/settings/ui/RemindSubSettingFragment;
    :cond_4
    const-string/jumbo v14, "com.iflytek.cmcc.action.NOVEL_SETTING"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 142
    new-instance v11, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-direct {v11}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;-><init>()V

    .line 143
    .local v11, "newFragment":Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v11}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 144
    .end local v11    # "newFragment":Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;
    :cond_5
    const-string/jumbo v14, "com.iflytek.cmcc.action.ACTION_QUICK_NOTIFICATION_TOOL_SETTING"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 145
    new-instance v6, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;

    invoke-direct {v6}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;-><init>()V

    .line 146
    .local v6, "fragment":Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v6}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 147
    .end local v6    # "fragment":Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;
    :cond_6
    const-string/jumbo v14, "com.iflytek.cmcc.setting.card.LISTENBOOK"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 148
    new-instance v7, Lakz;

    invoke-direct {v7}, Lakz;-><init>()V

    .line 149
    .local v7, "listenFragment":Lakz;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v7}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 150
    .end local v7    # "listenFragment":Lakz;
    :cond_7
    const-string/jumbo v14, "com.iflytek.cmcc.setting.card.WEATHER"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 151
    new-instance v13, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;

    invoke-direct {v13}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;-><init>()V

    .line 152
    .local v13, "weatherFragment":Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v13}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 153
    .end local v13    # "weatherFragment":Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;
    :cond_8
    const-string/jumbo v14, "com.iflytek.cmcc.setting.card.CMCC"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 154
    new-instance v4, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;

    invoke-direct {v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;-><init>()V

    .line 155
    .local v4, "cmccFragment":Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v4}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 156
    .end local v4    # "cmccFragment":Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;
    :cond_9
    const-string/jumbo v14, "com.iflytek.cmcc.setting.card.FOOD"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 157
    new-instance v5, Lakt;

    invoke-direct {v5}, Lakt;-><init>()V

    .line 158
    .local v5, "foodFragment":Lakt;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v5}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 159
    .end local v5    # "foodFragment":Lakt;
    :cond_a
    const-string/jumbo v14, "com.iflytek.cmcc.setting.card.MOVIES"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 160
    new-instance v9, Lali;

    invoke-direct {v9}, Lali;-><init>()V

    .line 161
    .local v9, "movicesFragment":Lali;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 162
    .end local v9    # "movicesFragment":Lali;
    :cond_b
    const-string/jumbo v14, "com.iflytek.cmcc.setting.card.MUSIC"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 163
    new-instance v10, Lalk;

    invoke-direct {v10}, Lalk;-><init>()V

    .line 164
    .local v10, "musicFragment":Lalk;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 165
    .end local v10    # "musicFragment":Lalk;
    :cond_c
    const-string/jumbo v14, "com.iflytek.cmcc.setting.card.AUDIO"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 166
    new-instance v3, Laiv;

    invoke-direct {v3}, Laiv;-><init>()V

    .line 167
    .local v3, "audioFragment":Laiv;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v3}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 168
    .end local v3    # "audioFragment":Laiv;
    :cond_d
    const-string/jumbo v14, "com.iflytek.cmcc.setting.card.NEWS"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 169
    new-instance v12, Lalm;

    invoke-direct {v12}, Lalm;-><init>()V

    .line 170
    .local v12, "newsFragment":Lalm;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 172
    .end local v12    # "newsFragment":Lalm;
    :cond_e
    new-instance v14, Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-direct {v14}, Lcom/iflytek/viafly/settings/ui/SettingFragment;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v14}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 179
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 222
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 225
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->finish()V

    .line 239
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->overridePendingTransition(II)V

    .line 240
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 203
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 207
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->performIntent(Landroid/content/Intent;)V

    .line 86
    invoke-static {p0}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 87
    .local v1, "screenWidth":I
    invoke-static {p0}, Lcom/iflytek/base/skin/ThemeUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 88
    .local v0, "screenHeight":I
    const-string/jumbo v2, "SettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " *"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "intercepted":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 189
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 193
    :cond_0
    if-eqz v1, :cond_1

    .line 194
    const/4 v2, 0x1

    .line 197
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 213
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->performIntent(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SettingActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 231
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
