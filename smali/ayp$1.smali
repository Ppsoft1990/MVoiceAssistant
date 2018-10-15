.class Layp$1;
.super Ljava/lang/Object;
.source "TranslateTitleBarHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layp;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layp;


# direct methods
.method constructor <init>(Layp;)V
    .locals 0
    .param p1, "this$0"    # Layp;

    .prologue
    .line 172
    iput-object p1, p0, Layp$1;->a:Layp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Layp$1;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Layp$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Layp$1;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Layp$a;

    move-result-object v0

    invoke-interface {v0}, Layp$a;->c()V

    .line 178
    :cond_0
    return-void
.end method
