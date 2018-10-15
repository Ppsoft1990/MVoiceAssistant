.class Lanj$a$5;
.super Ljava/lang/Object;
.source "BookOrderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanj$a;->h()V
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
    .line 332
    iput-object p1, p0, Lanj$a$5;->a:Lanj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    iget-object v0, p0, Lanj$a$5;->a:Lanj$a;

    invoke-virtual {v0}, Lanj$a;->c()V

    .line 336
    return-void
.end method
