.class Lanj$a$1;
.super Ljava/lang/Object;
.source "BookOrderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanj$a;->a()Lanj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanj$a;


# direct methods
.method constructor <init>(Lanj$a;)V
    .locals 0
    .param p1, "this$0"    # Lanj$a;

    .prologue
    .line 109
    iput-object p1, p0, Lanj$a$1;->a:Lanj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 112
    iget-object v0, p0, Lanj$a$1;->a:Lanj$a;

    invoke-static {v0}, Lanj$a;->a(Lanj$a;)Lane;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lanj$a$1;->a:Lanj$a;

    invoke-static {v0}, Lanj$a;->a(Lanj$a;)Lane;

    move-result-object v0

    invoke-interface {v0}, Lane;->d()V

    .line 115
    :cond_0
    return-void
.end method
