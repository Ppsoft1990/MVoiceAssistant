.class Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;
.super Landroid/os/Handler;
.source "OfflineVoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;
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
            "Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->a:Ljava/lang/ref/WeakReference;

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    .line 114
    .local v1, "outer":Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;
    if-eqz v1, :cond_0

    .line 115
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->b()V

    goto :goto_0

    .line 121
    :pswitch_1
    const-string/jumbo v5, "OfflineVoiceView"

    const-string/jumbo v6, "MSG_START_AUDITION"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 124
    .local v2, "styleBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 126
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v5

    invoke-virtual {v5, v4}, Lie;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v2    # "styleBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OfflineVoiceView"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string/jumbo v5, "OfflineVoiceView"

    const-string/jumbo v6, "MSG_STOP_AUDITION"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v5

    invoke-virtual {v5}, Lie;->d()V

    .line 134
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->c()V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "toast":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
