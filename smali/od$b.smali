.class Lod$b;
.super Ljava/lang/Object;
.source "IflyRingToneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Lod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lod;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lod;-><init>(Lod$1;)V

    sput-object v0, Lod$b;->a:Lod;

    return-void
.end method
