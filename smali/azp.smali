.class public Lazp;
.super Ljava/lang/Object;
.source "MockDialogForInputUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lazp;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazp;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    :try_start_0
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 26
    sget-object v3, Lazp;->a:Ljava/lang/String;

    const-string/jumbo v4, "show mock dialog for input Element get focus"

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 29
    .local v2, "mockDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 30
    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 37
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "mockDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 32
    :cond_0
    sget-object v3, Lazp;->a:Ljava/lang/String;

    const-string/jumbo v4, "showMockDialog fail"

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lazp;->a:Ljava/lang/String;

    const-string/jumbo v4, "showMockDialog exception"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
