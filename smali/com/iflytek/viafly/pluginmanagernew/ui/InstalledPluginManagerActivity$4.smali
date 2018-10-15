.class Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$4;
.super Ljava/lang/Object;
.source "InstalledPluginManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Landroid/content/Context;Lase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$4;->b:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$4;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$4;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 464
    return-void
.end method
