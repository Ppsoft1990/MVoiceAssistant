.class public Lcom/iflytek/viafly/account/ui/UserActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
.source "UserActivity.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;-><init>()V

    .line 26
    const-string/jumbo v0, "UserActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/UserActivity;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lmz;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->i()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "phoneNum":Ljava/lang/String;
    const-string/jumbo v1, "UserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initEngine phoneNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltj;->a(Ljava/lang/String;)V

    .line 69
    .end local v0    # "phoneNum":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const-string/jumbo v7, "UserActivity"

    const-string/jumbo v8, "performIntent"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v2

    .line 85
    .local v2, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "user.center"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    new-instance v3, Ltk;

    invoke-direct {v3}, Ltk;-><init>()V

    .line 90
    .local v3, "userCenterFragment":Ltk;
    invoke-virtual {v2, p0, v3}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto :goto_0

    .line 91
    .end local v3    # "userCenterFragment":Ltk;
    :cond_2
    const-string/jumbo v7, "user.voice"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 93
    new-instance v5, Ltn;

    invoke-direct {v5}, Ltn;-><init>()V

    .line 94
    .local v5, "userVoicePrintFragment":Ltn;
    invoke-virtual {v2, p0, v5}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto :goto_0

    .line 95
    .end local v5    # "userVoicePrintFragment":Ltn;
    :cond_3
    const-string/jumbo v7, "user.voiceLogin"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 97
    new-instance v4, Ltm;

    invoke-direct {v4}, Ltm;-><init>()V

    .line 98
    .local v4, "userVoiceLoginFragment":Ltm;
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 99
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "entry"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "entry":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 101
    invoke-virtual {v4, v1}, Ltm;->c(Ljava/lang/String;)V

    .line 104
    .end local v1    # "entry":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, p0, v4}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto :goto_0

    .line 105
    .end local v4    # "userVoiceLoginFragment":Ltm;
    :cond_5
    const-string/jumbo v7, "user.voiceSet"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 107
    new-instance v6, Lto;

    invoke-direct {v6}, Lto;-><init>()V

    .line 108
    .local v6, "userVoiceResetFragment":Lto;
    invoke-virtual {v2, p0, v6}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto :goto_0

    .line 109
    .end local v6    # "userVoiceResetFragment":Lto;
    :cond_6
    const-string/jumbo v7, "user.center.info"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 111
    new-instance v3, Ltk;

    invoke-direct {v3}, Ltk;-><init>()V

    .line 112
    .restart local v3    # "userCenterFragment":Ltk;
    const-string/jumbo v7, "user.center.info"

    invoke-virtual {v3, v7}, Ltk;->a(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, p0, v3}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0

    .line 114
    .end local v3    # "userCenterFragment":Ltk;
    :cond_7
    const-string/jumbo v7, "user.center.voice"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    new-instance v3, Ltk;

    invoke-direct {v3}, Ltk;-><init>()V

    .line 117
    .restart local v3    # "userCenterFragment":Ltk;
    const-string/jumbo v7, "user.center.voice"

    invoke-virtual {v3, v7}, Ltk;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, p0, v3}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 125
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 158
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->finish()V

    .line 235
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/account/ui/UserActivity;->overridePendingTransition(II)V

    .line 236
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->a()V

    .line 58
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/account/ui/UserActivity;->a(Landroid/content/Intent;)V

    .line 60
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "UserActivity"

    const-string/jumbo v1, "userActivity onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->d()V

    .line 191
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->f()V

    .line 192
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->b()V

    .line 204
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->destroy()V

    .line 209
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 211
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onDestroy()V

    .line 212
    return-void
.end method

.method public onEvent(Lti;)V
    .locals 3
    .param p1, "event"    # Lti;

    .prologue
    .line 216
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string/jumbo v1, "UserLoginEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    const-string/jumbo v1, "UserActivity"

    const-string/jumbo v2, " user login"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->a()V

    goto :goto_0

    .line 227
    :cond_2
    const-string/jumbo v1, "UserLogoutEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string/jumbo v1, "UserActivity"

    const-string/jumbo v2, " user logout"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "intercepted":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 135
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 139
    :cond_0
    if-eqz v1, :cond_1

    .line 140
    const/4 v2, 0x1

    .line 143
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
    .line 148
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 149
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 152
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/account/ui/UserActivity;->setIntent(Landroid/content/Intent;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/account/ui/UserActivity;->a(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 182
    const-string/jumbo v0, "UserActivity"

    const-string/jumbo v1, "onPause stopListening "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->e()V

    .line 184
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onPause()V

    .line 185
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "UserActivity"

    const-string/jumbo v1, "onStop stopListening "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->e()V

    .line 177
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onStop()V

    .line 178
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/UserActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 167
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 170
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
