.class Lbbd$5;
.super Ljava/lang/Object;
.source "VoiceCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbd;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field final synthetic b:Lbbd;


# direct methods
.method constructor <init>(Lbbd;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lbbd;

    .prologue
    .line 196
    iput-object p1, p0, Lbbd$5;->b:Lbbd;

    iput-object p2, p0, Lbbd$5;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    const-string/jumbo v1, "0"

    iget-object v2, p0, Lbbd$5;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lbbd$5;->b:Lbbd;

    invoke-static {v1}, Lbbd;->a(Lbbd;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lbbd$5;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    const-string/jumbo v3, "category"

    invoke-interface {v1, v2, v3}, Lbbb;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lbbd$5;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v0

    .line 203
    .local v0, "status":Lcom/iflytek/viafly/voicerole/model/Status;
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/model/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 204
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/model/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    :cond_2
    iget-object v1, p0, Lbbd$5;->b:Lbbd;

    invoke-static {v1}, Lbbd;->a(Lbbd;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lbbd$5;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    const-string/jumbo v3, "category"

    invoke-interface {v1, v2, v3}, Lbbb;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_4

    .line 207
    iget-object v1, p0, Lbbd$5;->b:Lbbd;

    invoke-static {v1}, Lbbd;->a(Lbbd;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lbbd$5;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-interface {v1, v2}, Lbbb;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_0

    .line 208
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_5

    .line 209
    iget-object v1, p0, Lbbd$5;->b:Lbbd;

    invoke-static {v1}, Lbbd;->a(Lbbd;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lbbd$5;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-interface {v1, v2}, Lbbb;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_0

    .line 210
    :cond_5
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_0

    .line 211
    iget-object v1, p0, Lbbd$5;->b:Lbbd;

    invoke-static {v1}, Lbbd;->a(Lbbd;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lbbd$5;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    const-string/jumbo v3, "category"

    invoke-interface {v1, v2, v3}, Lbbb;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    goto :goto_0
.end method
