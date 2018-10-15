.class Lig$a;
.super Ljava/lang/Object;
.source "IflyPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lig;-><init>(Lig$1;)V

    sput-object v0, Lig$a;->a:Lig;

    return-void
.end method
