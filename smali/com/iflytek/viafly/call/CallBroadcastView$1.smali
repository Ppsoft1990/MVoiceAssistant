.class Lcom/iflytek/viafly/call/CallBroadcastView$1;
.super Ljava/lang/Object;
.source "CallBroadcastView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/call/CallBroadcastView;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/call/CallBroadcastView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBroadcastView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBroadcastView;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 126
    .local v0, "now":J
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-static {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->a(Lcom/iflytek/viafly/call/CallBroadcastView;)J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-static {v3, v6, v7}, Lcom/iflytek/viafly/call/CallBroadcastView;->a(Lcom/iflytek/viafly/call/CallBroadcastView;J)J

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/iflytek/viafly/call/CallBroadcastView;->a(Lcom/iflytek/viafly/call/CallBroadcastView;J)J

    .line 132
    invoke-static {}, Lcom/iflytek/viafly/call/CallBroadcastView;->c()Z

    move-result v3

    if-ne v3, v9, :cond_3

    .line 133
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v3

    const-string/jumbo v4, "FC01009"

    const-string/jumbo v5, "click_callinpage_close_tts_btn"

    invoke-virtual {v3, v4, v5}, Labu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v8}, Lcom/iflytek/viafly/call/CallBroadcastView;->a(Z)Z

    .line 139
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setCallBroadcastState(Ljava/lang/Boolean;)V

    .line 141
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v3, v4}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.CANCEL_CALL_NOTIFY_ACTION"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "CALL_NOTIFY"

    invoke-static {v3, v4, v8}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 147
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->f()V

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-static {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->b(Lcom/iflytek/viafly/call/CallBroadcastView;)V

    .line 168
    :goto_1
    return-void

    .line 128
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-static {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->a(Lcom/iflytek/viafly/call/CallBroadcastView;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    goto :goto_1

    .line 150
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "timeString":Ljava/lang/String;
    const-string/jumbo v3, "CallBroadcastView"

    invoke-static {v3, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v3

    const-string/jumbo v4, "FC01009"

    const-string/jumbo v5, "click_callinpage_open_tts_btn"

    invoke-virtual {v3, v4, v5}, Labu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v9}, Lcom/iflytek/viafly/call/CallBroadcastView;->a(Z)Z

    .line 158
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setCallBroadcastState(Ljava/lang/Boolean;)V

    .line 160
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.CALL_NOTIFY_ACTION"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v3, v4, v8}, Lil;->a(Ljava/lang/String;Z)V

    .line 163
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView$1;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "CALL_NOTIFY"

    invoke-static {v3, v4, v9}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 164
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->e()V

    goto :goto_0
.end method
