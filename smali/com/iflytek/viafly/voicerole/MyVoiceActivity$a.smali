.class Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;
.super Landroid/os/Handler;
.source "MyVoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicerole/MyVoiceActivity;
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
            "Lcom/iflytek/viafly/voicerole/MyVoiceActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    .prologue
    .line 357
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 358
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 359
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 363
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    .line 364
    .local v0, "outer":Lcom/iflytek/viafly/voicerole/MyVoiceActivity;
    if-eqz v0, :cond_0

    .line 365
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 367
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 368
    .local v3, "toast":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 369
    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 373
    .end local v3    # "toast":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v5, "MyVoiceActivity"

    const-string/jumbo v6, "MSG_START_SYSTEM_AUDITION"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 375
    .local v2, "systemBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 376
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->c(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)Lpp;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->v()Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    invoke-virtual {v7, v2}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v7

    .line 376
    invoke-virtual {v5, v6, v7, v0}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_0

    .line 380
    .end local v2    # "systemBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :pswitch_3
    const-string/jumbo v5, "MyVoiceActivity"

    const-string/jumbo v6, "MSG_START_AUDITION"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 382
    .local v1, "styleBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->j()Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 384
    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v5

    invoke-virtual {v5, v4}, Lie;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v1    # "styleBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v5, "MyVoiceActivity"

    const-string/jumbo v6, "MSG_STOP_AUDITION"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->c(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)Lpp;

    move-result-object v5

    invoke-virtual {v5, v0}, Lpp;->c(Lju;)V

    .line 389
    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v5

    invoke-virtual {v5}, Lie;->d()V

    .line 390
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V

    goto :goto_0

    .line 393
    :pswitch_5
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->d(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
