.class public Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;
.super Ljava/lang/Object;
.source "CallSmsSettingStateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallBroadcastState()Z
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCallPopWinState()Z
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getPrivateSmsBroadcastState()Z
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SMS_PRIVACY_RECOGNITION"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsBroadcastState()Z
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSmsPopWinState()Z
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSmsVibrateState()Z
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SMS_VIBRATE"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCallBroadcastOpened()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getCallPopWinState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getCallBroadcastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallPopWinOpend()Z
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getCallPopWinState()Z

    move-result v0

    return v0
.end method

.method public static isPrivateSmsBroadcastOpened()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsPopWinState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsBroadcastState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getPrivateSmsBroadcastState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmsBroadcastOpened()Z
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsPopWinState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsBroadcastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmsPopWinOpend()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsPopWinState()Z

    move-result v0

    return v0
.end method

.method public static isSmsVibrateOpened()Z
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsPopWinState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsVibrateState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCallBroadcastOpened(Z)V
    .locals 1
    .param p0, "state"    # Z

    .prologue
    .line 175
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setCallPopWinState(Ljava/lang/Boolean;)V

    .line 176
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setCallBroadcastState(Ljava/lang/Boolean;)V

    .line 177
    return-void
.end method

.method public static setCallBroadcastState(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 81
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    .line 82
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 81
    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public static setCallPopWinState(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 72
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    .line 73
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public static setPrivateSmsBroadcastState(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 108
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SMS_PRIVACY_RECOGNITION"

    .line 109
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSmsBroadcastOpened(Z)V
    .locals 1
    .param p0, "state"    # Z

    .prologue
    .line 183
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsPopWinState(Ljava/lang/Boolean;)V

    .line 184
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsBroadcastState(Ljava/lang/Boolean;)V

    .line 185
    return-void
.end method

.method public static setSmsBroadcastState(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 99
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    .line 100
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public static setSmsPopWinState(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 90
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    .line 91
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 90
    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public static setSmsVibrateState(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 117
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SMS_VIBRATE"

    .line 118
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 119
    return-void
.end method
