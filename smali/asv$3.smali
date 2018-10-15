.class Lasv$3;
.super Ljava/lang/Object;
.source "PluginLabelItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasv;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasv;


# direct methods
.method constructor <init>(Lasv;)V
    .locals 0
    .param p1, "this$0"    # Lasv;

    .prologue
    .line 127
    iput-object p1, p0, Lasv$3;->a:Lasv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lasv$3;->a:Lasv;

    iget-object v0, v0, Lasv;->k:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lasv$3;->a:Lasv;

    iget-object v0, v0, Lasv;->k:Landroid/content/Context;

    const v1, 0x7f0c02d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lasv$3;->a:Lasv;

    invoke-static {v0}, Lasv;->d(Lasv;)V

    goto :goto_0
.end method
