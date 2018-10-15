.class Lauj$2;
.super Ljava/lang/Object;
.source "ScheduleDeleteGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauj;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lauj;


# direct methods
.method constructor <init>(Lauj;)V
    .locals 0
    .param p1, "this$0"    # Lauj;

    .prologue
    .line 82
    iput-object p1, p0, Lauj$2;->a:Lauj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lauj$2;->a:Lauj;

    invoke-virtual {v0}, Lauj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lauj$2;->a:Lauj;

    invoke-virtual {v0}, Lauj;->dismiss()V

    .line 89
    :cond_0
    return-void
.end method
