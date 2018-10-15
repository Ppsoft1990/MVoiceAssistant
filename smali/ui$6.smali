.class Lui$6;
.super Ljava/lang/Object;
.source "AppInstallController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

.field final synthetic b:Lui;


# direct methods
.method constructor <init>(Lui;Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lui;

    .prologue
    .line 353
    iput-object p1, p0, Lui$6;->b:Lui;

    iput-object p2, p0, Lui$6;->a:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 356
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "space dialog cancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lui$6;->a:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->dismiss()V

    .line 359
    return-void
.end method
