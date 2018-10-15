.class public Laok;
.super Ljava/lang/Object;
.source "ShowDialogEvent.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "UserStateEvent"

    iput-object v0, p0, Laok;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Laok;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Laok;->b:Ljava/lang/String;

    return-object v0
.end method
