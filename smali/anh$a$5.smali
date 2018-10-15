.class Lanh$a$5;
.super Ljava/lang/Object;
.source "BookListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanh$a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanh$a;


# direct methods
.method constructor <init>(Lanh$a;)V
    .locals 0
    .param p1, "this$0"    # Lanh$a;

    .prologue
    .line 282
    iput-object p1, p0, Lanh$a$5;->a:Lanh$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lanh$a$5;->a:Lanh$a;

    iget-object v0, v0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    .line 286
    iget-object v0, p0, Lanh$a$5;->a:Lanh$a;

    iget-object v0, v0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    iget-object v1, p0, Lanh$a$5;->a:Lanh$a;

    invoke-static {v1}, Lanh$a;->f(Lanh$a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->addFooterView(Landroid/view/View;)V

    .line 287
    return-void
.end method
