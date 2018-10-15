.class Laqs$a;
.super Ljava/lang/Object;
.source "NotificationGrayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Laqs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Laqs;

    invoke-direct {v0}, Laqs;-><init>()V

    sput-object v0, Laqs$a;->a:Laqs;

    return-void
.end method

.method static synthetic a()Laqs;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Laqs$a;->a:Laqs;

    return-object v0
.end method
