.class Lbbd$3;
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
    .line 180
    iput-object p1, p0, Lbbd$3;->b:Lbbd;

    iput-object p2, p0, Lbbd$3;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lbbd$3;->b:Lbbd;

    invoke-static {v0}, Lbbd;->a(Lbbd;)Lbbb;

    move-result-object v0

    iget-object v1, p0, Lbbd$3;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    const-string/jumbo v2, "category"

    invoke-interface {v0, v1, v2}, Lbbb;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    .line 184
    return-void
.end method
