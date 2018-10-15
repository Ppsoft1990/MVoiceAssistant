.class Laqt$2;
.super Ljava/lang/Object;
.source "NovelSettingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqt;


# direct methods
.method constructor <init>(Laqt;)V
    .locals 0
    .param p1, "this$0"    # Laqt;

    .prologue
    .line 101
    iput-object p1, p0, Laqt$2;->a:Laqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Laqt$2;->a:Laqt;

    invoke-virtual {v0}, Laqt;->a()V

    .line 105
    return-void
.end method
