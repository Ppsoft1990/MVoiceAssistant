.class Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;
.super Landroid/os/Handler;
.source "StarAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicerole/StarAudioActivity;
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
            "Lcom/iflytek/viafly/voicerole/StarAudioActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 774
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 775
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 776
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 780
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .line 781
    .local v0, "outer":Lcom/iflytek/viafly/voicerole/StarAudioActivity;
    if-eqz v0, :cond_0

    .line 782
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 784
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 785
    .local v3, "toast":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 786
    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 791
    .end local v3    # "toast":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v5, "StarAudio"

    const-string/jumbo v6, "MSG_START_SYSTEM_AUDITION"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 793
    .local v2, "systemBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 794
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lpp;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->v()Ljava/lang/String;

    move-result-object v6

    .line 795
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    invoke-virtual {v7, v2}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v7

    .line 794
    invoke-virtual {v5, v6, v7, v0}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_0

    .line 799
    .end local v2    # "systemBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :pswitch_2
    const-string/jumbo v5, "StarAudio"

    const-string/jumbo v6, "MSG_START_AUDITION"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 801
    .local v1, "styleBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->j()Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 803
    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v5

    invoke-virtual {v5, v4}, Lie;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 807
    .end local v1    # "styleBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v5, "StarAudio"

    const-string/jumbo v6, "MSG_STOP_AUDITION"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lpp;

    move-result-object v5

    invoke-virtual {v5, v0}, Lpp;->c(Lju;)V

    .line 809
    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v5

    invoke-virtual {v5}, Lie;->d()V

    .line 810
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c()V

    goto :goto_0

    .line 814
    :pswitch_4
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    goto :goto_0

    .line 818
    :pswitch_5
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    goto :goto_0

    .line 822
    :pswitch_6
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    goto :goto_0

    .line 826
    :pswitch_7
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 827
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 828
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 832
    :pswitch_8
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 833
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 836
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->h(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Lcom/iflytek/viafly/voicerole/StarAudioActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 837
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->j(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v5

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->i(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 840
    :pswitch_9
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->k(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 843
    :pswitch_a
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->k(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
