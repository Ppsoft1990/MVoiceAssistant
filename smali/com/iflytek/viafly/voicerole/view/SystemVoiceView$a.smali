.class Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;
.super Landroid/os/Handler;
.source "SystemVoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->a:Ljava/lang/ref/WeakReference;

    .line 98
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    .line 103
    .local v0, "outer":Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;
    if-eqz v0, :cond_0

    .line 104
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, "toast":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    .end local v2    # "toast":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->b()V

    goto :goto_0

    .line 115
    :pswitch_2
    const-string/jumbo v3, "SpeakerChooseView"

    const-string/jumbo v4, "MSG_START_AUDITION"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string/jumbo v3, "SpeakerChooseView"

    const-string/jumbo v4, "MSG_START_SYSTEM_AUDITION"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 119
    .local v1, "systemBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 120
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a(Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;)Lpp;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->v()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v5

    invoke-virtual {v5, v1}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v5

    .line 120
    invoke-virtual {v3, v4, v5, v0}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_0

    .line 124
    .end local v1    # "systemBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :pswitch_3
    const-string/jumbo v3, "SpeakerChooseView"

    const-string/jumbo v4, "MSG_STOP_AUDITION"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a(Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;)Lpp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lpp;->c(Lju;)V

    .line 126
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->c()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
