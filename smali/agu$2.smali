.class Lagu$2;
.super Ljava/lang/Object;
.source "UserGuideCustomSpeakerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagu;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field final synthetic b:Lagu$a;

.field final synthetic c:Lagu;


# direct methods
.method constructor <init>(Lagu;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Lagu$a;)V
    .locals 0
    .param p1, "this$0"    # Lagu;

    .prologue
    .line 119
    iput-object p1, p0, Lagu$2;->c:Lagu;

    iput-object p2, p0, Lagu$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    iput-object p3, p0, Lagu$2;->b:Lagu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lagu$2;->c:Lagu;

    invoke-static {v1}, Lagu;->a(Lagu;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lagu$2;->c:Lagu;

    invoke-static {v2}, Lagu;->a(Lagu;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lagu$2;->c:Lagu;

    invoke-static {v1}, Lagu;->b(Lagu;)Lpp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lpp;->d(Lju;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lagu$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v0

    .line 128
    .local v0, "isPlaying":Z
    iget-object v1, p0, Lagu$2;->c:Lagu;

    invoke-static {v1}, Lagu;->b(Lagu;)Lpp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lpp;->c(Lju;)V

    .line 129
    if-nez v0, :cond_0

    .line 130
    iget-object v1, p0, Lagu$2;->c:Lagu;

    invoke-static {v1}, Lagu;->b(Lagu;)Lpp;

    move-result-object v1

    iget-object v2, p0, Lagu$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v3

    iget-object v4, p0, Lagu$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v3, v4}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lagu$2;->b:Lagu$a;

    invoke-virtual {v1, v2, v3, v4}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_0

    .line 133
    .end local v0    # "isPlaying":Z
    :cond_2
    iget-object v1, p0, Lagu$2;->c:Lagu;

    invoke-static {v1}, Lagu;->b(Lagu;)Lpp;

    move-result-object v1

    iget-object v2, p0, Lagu$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v3

    iget-object v4, p0, Lagu$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v3, v4}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lagu$2;->b:Lagu$a;

    invoke-virtual {v1, v2, v3, v4}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_0
.end method
