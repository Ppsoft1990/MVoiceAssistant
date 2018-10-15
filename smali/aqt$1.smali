.class Laqt$1;
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
    .line 83
    iput-object p1, p0, Laqt$1;->a:Laqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.action.NOVEL_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Laqt$1;->a:Laqt;

    invoke-static {v1}, Laqt;->a(Laqt;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Laqt$1;->a:Laqt;

    invoke-static {v1}, Laqt;->a(Laqt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
