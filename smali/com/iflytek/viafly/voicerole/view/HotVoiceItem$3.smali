.class Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$3;
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
    .line 95
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$3;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$3;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lbbb;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$3;->a:Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-static {v1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    const-string/jumbo v2, "hot"

    invoke-interface {v0, v1, v2}, Lbbb;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    .line 99
    return-void
.end method
