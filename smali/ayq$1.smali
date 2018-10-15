.class Layq$1;
.super Ljava/lang/Object;
.source "AlertEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layq;


# direct methods
.method constructor <init>(Layq;)V
    .locals 0
    .param p1, "this$0"    # Layq;

    .prologue
    .line 54
    iput-object p1, p0, Layq$1;->a:Layq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Layq$1;->a:Layq;

    invoke-static {v0}, Layq;->a(Layq;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 58
    return-void
.end method
