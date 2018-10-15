.class Lasr$3;
.super Ljava/lang/Object;
.source "OneKeyInstallAllPluginManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasr;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasr;


# direct methods
.method constructor <init>(Lasr;)V
    .locals 0
    .param p1, "this$0"    # Lasr;

    .prologue
    .line 132
    iput-object p1, p0, Lasr$3;->a:Lasr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    return-void
.end method
