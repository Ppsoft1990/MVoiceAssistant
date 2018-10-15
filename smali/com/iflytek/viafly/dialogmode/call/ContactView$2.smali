.class Lcom/iflytek/viafly/dialogmode/call/ContactView$2;
.super Ljava/lang/Object;
.source "ContactView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dialogmode/call/ContactView;->a(Landroid/view/ViewGroup;ILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;ZLorg/json/JSONArray;ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/iflytek/viafly/dialogmode/call/ContactView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/call/ContactView;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$2;->c:Lcom/iflytek/viafly/dialogmode/call/ContactView;

    iput p2, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$2;->a:I

    iput p3, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$2;->c:Lcom/iflytek/viafly/dialogmode/call/ContactView;

    const-string/jumbo v1, "callOut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$2;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$2;->b:I

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a(Lcom/iflytek/viafly/dialogmode/call/ContactView;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    return-void
.end method
