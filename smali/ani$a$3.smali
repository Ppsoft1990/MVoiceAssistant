.class Lani$a$3;
.super Ljava/lang/Object;
.source "BookMoreDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lani$a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lani$a;


# direct methods
.method constructor <init>(Lani$a;)V
    .locals 0
    .param p1, "this$0"    # Lani$a;

    .prologue
    .line 172
    iput-object p1, p0, Lani$a$3;->a:Lani$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lani$a$3;->a:Lani$a;

    invoke-static {v0}, Lani$a;->a(Lani$a;)Lane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lani$a$3;->a:Lani$a;

    invoke-static {v0}, Lani$a;->a(Lani$a;)Lane;

    move-result-object v0

    invoke-interface {v0}, Lane;->c()V

    .line 178
    :cond_0
    iget-object v0, p0, Lani$a$3;->a:Lani$a;

    invoke-virtual {v0}, Lani$a;->c()V

    .line 179
    return-void
.end method
