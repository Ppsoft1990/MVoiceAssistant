.class Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;
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
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic c:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;ILcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;->c:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    iput p2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;->a:I

    iput-object p3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;->c:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Lari;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;->a:I

    invoke-virtual {v0, v1}, Lari;->a(I)V

    .line 472
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;->c:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;->a:I

    invoke-virtual {v0, v1}, Lxk;->a(I)V

    .line 474
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$5;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 475
    return-void
.end method
