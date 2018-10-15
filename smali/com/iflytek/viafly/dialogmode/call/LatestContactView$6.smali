.class Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;
.super Ljava/lang/Object;
.source "LatestContactView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;->d:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    iput-object p2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;->d:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    const-string/jumbo v1, "opRecoCall"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$6;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    return-void
.end method
