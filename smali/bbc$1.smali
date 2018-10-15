.class Lbbc$1;
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
    .line 99
    iput-object p1, p0, Lbbc$1;->b:Lbbc;

    iput-object p2, p0, Lbbc$1;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lbbc$1;->b:Lbbc;

    invoke-static {v0}, Lbbc;->a(Lbbc;)Lbbh;

    move-result-object v0

    iget-object v1, p0, Lbbc$1;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-interface {v0, v1}, Lbbh;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 103
    return-void
.end method
