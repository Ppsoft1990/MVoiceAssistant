.class Lavm$a;
.super Ljava/lang/Object;
.source "WakeupScheduleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lavm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lavm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lavm;-><init>(Lavm$1;)V

    sput-object v0, Lavm$a;->a:Lavm;

    return-void
.end method

.method static synthetic a()Lavm;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lavm$a;->a:Lavm;

    return-object v0
.end method
