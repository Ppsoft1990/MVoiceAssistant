.class public final Lauthcommon/bw$a;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauthcommon/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lauthcommon/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lauthcommon/bw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lauthcommon/bw;-><init>(B)V

    sput-object v0, Lauthcommon/bw$a;->a:Lauthcommon/bw;

    return-void
.end method

.method public static synthetic a()Lauthcommon/bw;
    .locals 1

    sget-object v0, Lauthcommon/bw$a;->a:Lauthcommon/bw;

    return-object v0
.end method
