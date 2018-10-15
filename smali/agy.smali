.class public Lagy;
.super Laht;
.source "HomeDialSmsHelper.java"


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Laht;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    const-string/jumbo v1, "HomeDialSmsHelper"

    const-string/jumbo v2, "onReceive | CALL_RECEIVE_ACTION"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "callState":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 49
    invoke-virtual {p0}, Lagy;->p()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ViaFlyApp;

    .line 50
    .local v0, "viaFlyApp":Lcom/iflytek/viafly/ViaFlyApp;
    invoke-virtual {p0}, Lagy;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lahr;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ViaFlyApp;->a(Z)V

    .line 53
    invoke-static {}, Lagm;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsPopWinState(Ljava/lang/Boolean;)V

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsVibrateState(Ljava/lang/Boolean;)V

    .line 58
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsPopWinState(Ljava/lang/Boolean;)V

    .line 60
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsVibrateState(Ljava/lang/Boolean;)V

    .line 68
    :cond_0
    invoke-static {}, Lagm;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lagy;->p()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "CALL_NOTIFY"

    invoke-static {v1, v2, v3}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 71
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setCallBroadcastOpened(Z)V

    .line 74
    invoke-virtual {p0}, Lagy;->p()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "CALL_NOTIFY"

    invoke-static {v1, v2, v4}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 83
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 77
    :cond_2
    invoke-static {v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setCallBroadcastOpened(Z)V

    goto :goto_0
.end method

.method public a_(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 122
    const/16 v3, 0xd

    const-string/jumbo v4, "from_where"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/16 v3, 0x18

    const-string/jumbo v4, "from_where"

    .line 123
    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 124
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a()Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    move-result-object v1

    .line 125
    .local v1, "tempDialog":Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    .line 129
    .end local v1    # "tempDialog":Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_SAVE_CONTACTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    const-string/jumbo v3, "contacts"

    invoke-static {v3}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lagy;->o()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "select_contact_name"

    new-array v5, v2, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lagy;->o()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c035d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 139
    invoke-static {v3, v4, v8, v5}, Lcom/iflytek/framework/business/speech/ManualSelectHandler;->selectHandle(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 144
    :goto_0
    return v2

    :cond_2
    invoke-super {p0, p1}, Laht;->b(Landroid/content/Intent;)Z

    move-result v2

    goto :goto_0
.end method

.method public b(Z)Z
    .locals 4
    .param p1, "isFirst"    # Z

    .prologue
    .line 100
    if-eqz p1, :cond_2

    .line 101
    const-string/jumbo v0, "HomeDialSmsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFLY_IS_NEED_JUDGE_SIM_STATUS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_IS_NEED_JUDGE_SIM_STATUS"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IS_NEED_JUDGE_SIM_STATUS"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lagy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lmz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lmz;->a(Z)V

    .line 108
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_CMCC_NOVEL_URL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lagy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labj;->a(Landroid/content/Context;)Labj;

    .line 114
    invoke-static {}, Labj;->a()Labj;

    move-result-object v0

    invoke-virtual {v0}, Labj;->c()V

    .line 116
    :cond_2
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Labj;->a()Labj;

    move-result-object v0

    .line 150
    .local v0, "dialSmsBusinessImpl":Labj;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Labj;->d()V

    .line 154
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->release()V

    .line 155
    invoke-super {p0}, Laht;->c()Z

    move-result v1

    return v1
.end method

.method public d()V
    .locals 0

    .prologue
    .line 208
    invoke-static {}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->release()V

    .line 209
    invoke-super {p0}, Laht;->d()V

    .line 210
    return-void
.end method
