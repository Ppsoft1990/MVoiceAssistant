.class Lanh$a$1;
.super Ljava/lang/Object;
.source "BookListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanh$a;->a()Lanh;
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
    .line 90
    iput-object p1, p0, Lanh$a$1;->a:Lanh$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lanh$a$1;->a:Lanh$a;

    invoke-static {v0, v1}, Lanh$a;->a(Lanh$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lanh$a$1;->a:Lanh$a;

    invoke-static {v0, v1}, Lanh$a;->b(Lanh$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lanh$a$1;->a:Lanh$a;

    invoke-static {v0, v1}, Lanh$a;->a(Lanh$a;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lanh$a$1;->a:Lanh$a;

    iput-object v1, v0, Lanh$a;->a:Lcom/iflytek/base/skin/customView/PullListView;

    .line 98
    iget-object v0, p0, Lanh$a$1;->a:Lanh$a;

    invoke-static {v0, v1}, Lanh$a;->a(Lanh$a;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lanh$a$1;->a:Lanh$a;

    invoke-static {v0, v1}, Lanh$a;->b(Lanh$a;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 100
    iget-object v0, p0, Lanh$a$1;->a:Lanh$a;

    invoke-static {v0, v1}, Lanh$a;->a(Lanh$a;Landroid/view/View;)Landroid/view/View;

    .line 101
    return-void
.end method
