.class Lcom/iflytek/viafly/homepage/LxHomeDialogView$2;
.super Ljava/lang/Object;
.source "LxHomeDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$2;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$2;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V

    .line 101
    return-void
.end method
