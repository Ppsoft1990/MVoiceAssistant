.class public Lakf;
.super Ljava/lang/Object;
.source "CmccCardEvent.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "UserGuideEntryEvent"

    iput-object v0, p0, Lakf;->a:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lakf;->b:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lakf;->b:Ljava/lang/String;

    return-object v0
.end method
