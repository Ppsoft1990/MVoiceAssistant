.class Lhe$b;
.super Ljava/lang/Object;
.source "ContactManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Lhe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lhe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhe;-><init>(Lhe$1;)V

    sput-object v0, Lhe$b;->a:Lhe;

    return-void
.end method
