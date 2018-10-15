.class Lang$1;
.super Ljava/lang/Object;
.source "BookListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lang;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/entity/Chapter;

.field final synthetic b:Lang;


# direct methods
.method constructor <init>(Lang;Lcom/iflytek/viafly/listenbook/entity/Chapter;)V
    .locals 0
    .param p1, "this$0"    # Lang;

    .prologue
    .line 87
    iput-object p1, p0, Lang$1;->b:Lang;

    iput-object p2, p0, Lang$1;->a:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lang$1;->a:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lang$1;->b:Lang;

    invoke-static {v0}, Lang;->a(Lang;)Lane;

    move-result-object v0

    iget-object v1, p0, Lang$1;->a:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lane;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
