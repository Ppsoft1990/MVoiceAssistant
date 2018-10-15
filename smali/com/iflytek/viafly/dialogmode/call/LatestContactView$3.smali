.class Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;
.super Ljava/lang/Object;
.source "LatestContactView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(ZLjava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;->c:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    iput-object p2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;->c:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    const-string/jumbo v1, "opRecoCall"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$3;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    return-void
.end method
