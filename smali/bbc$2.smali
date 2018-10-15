.class Lbbc$2;
.super Ljava/lang/Object;
.source "SpeakerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field final synthetic b:Lbbc;


# direct methods
.method constructor <init>(Lbbc;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lbbc;

    .prologue
    .line 112
    iput-object p1, p0, Lbbc$2;->b:Lbbc;

    iput-object p2, p0, Lbbc$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v1, p0, Lbbc$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v0

    .line 116
    .local v0, "status":Lcom/iflytek/viafly/voicerole/model/Status;
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/model/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 117
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/model/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    :cond_0
    iget-object v1, p0, Lbbc$2;->b:Lbbc;

    invoke-static {v1}, Lbbc;->a(Lbbc;)Lbbh;

    move-result-object v1

    iget-object v2, p0, Lbbc$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-interface {v1, v2}, Lbbh;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_3

    .line 120
    iget-object v1, p0, Lbbc$2;->b:Lbbc;

    invoke-static {v1}, Lbbc;->a(Lbbc;)Lbbh;

    move-result-object v1

    iget-object v2, p0, Lbbc$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-interface {v1, v2}, Lbbh;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_0

    .line 121
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_4

    .line 122
    iget-object v1, p0, Lbbc$2;->b:Lbbc;

    invoke-static {v1}, Lbbc;->a(Lbbc;)Lbbh;

    move-result-object v1

    iget-object v2, p0, Lbbc$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-interface {v1, v2}, Lbbh;->e(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_0

    .line 123
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_1

    .line 124
    iget-object v1, p0, Lbbc$2;->b:Lbbc;

    invoke-static {v1}, Lbbc;->a(Lbbc;)Lbbh;

    move-result-object v1

    iget-object v2, p0, Lbbc$2;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-interface {v1, v2}, Lbbh;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_0
.end method
