.class Lanh$a$3;
.super Ljava/lang/Object;
.source "BookListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanh$a;->g()V
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
    .line 235
    iput-object p1, p0, Lanh$a$3;->a:Lanh$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lanh$a$3;->a:Lanh$a;

    invoke-virtual {v0}, Lanh$a;->c()V

    .line 239
    return-void
.end method
