.class public Lnj;
.super Ljava/lang/Object;
.source "CustomConstant.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnj;->a:Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lnj;->b:Z

    return-void
.end method
