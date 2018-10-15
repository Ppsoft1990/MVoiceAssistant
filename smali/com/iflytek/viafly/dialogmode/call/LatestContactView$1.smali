.class Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;
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

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->d:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    iput-object p2, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    const-string/jumbo v0, "home"

    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->d:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    const-string/jumbo v1, "opRecoSmsHome"

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string/jumbo v0, "\u672a\u77e5"

    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->d:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    const-string/jumbo v1, "opRecoSmsSubPage"

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->d:Lcom/iflytek/viafly/dialogmode/call/LatestContactView;

    const-string/jumbo v1, "opRecoSmsSubPage"

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/LatestContactView$1;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/LatestContactView;->a(Lcom/iflytek/viafly/dialogmode/call/LatestContactView;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
