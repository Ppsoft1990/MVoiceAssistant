.class Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;
.super Ljava/lang/Object;
.source "HotVoiceItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    const-string/jumbo v1, "0"

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v2}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v2}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    const-string/jumbo v3, "hot"

    invoke-interface {v1, v2, v3}, Lbbb;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v0

    .line 114
    .local v0, "status":Lcom/iflytek/viafly/voicerole/model/Status;
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/model/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 115
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/model/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v2}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    const-string/jumbo v3, "hot"

    invoke-interface {v1, v2, v3}, Lbbb;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_4

    .line 118
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v2}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lbbb;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_0

    .line 119
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_5

    .line 120
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v2}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lbbb;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_0

    .line 121
    :cond_5
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v1, v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lbbb;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v2}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    const-string/jumbo v3, "hot"

    invoke-interface {v1, v2, v3}, Lbbb;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    goto :goto_0
.end method
