.class Lanh$a$4;
.super Ljava/lang/Object;
.source "BookListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanh$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lanh$a;


# direct methods
.method constructor <init>(Lanh$a;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lanh$a;

    .prologue
    .line 269
    iput-object p1, p0, Lanh$a$4;->b:Lanh$a;

    iput-object p2, p0, Lanh$a$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lanh$a$4;->b:Lanh$a;

    iget-object v0, v0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/PullListView;->stopLoadMore()V

    .line 273
    iget-object v0, p0, Lanh$a$4;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lanh$a$4;->b:Lanh$a;

    iget-object v1, p0, Lanh$a$4;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lanh$a;->a(Lanh$a;Ljava/util/List;)Ljava/util/List;

    .line 275
    iget-object v0, p0, Lanh$a$4;->b:Lanh$a;

    invoke-static {v0}, Lanh$a;->e(Lanh$a;)Lang;

    move-result-object v0

    iget-object v1, p0, Lanh$a$4;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lang;->a(Ljava/util/List;)V

    .line 277
    :cond_0
    return-void
.end method
