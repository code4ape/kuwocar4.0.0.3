.class Lcom/github/anrwatchdog/ANRError$$;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/StackTraceElement;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/anrwatchdog/ANRError$$;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/anrwatchdog/ANRError$$;->b:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/github/anrwatchdog/ANRError$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/anrwatchdog/ANRError$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic a(Lcom/github/anrwatchdog/ANRError$$;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/anrwatchdog/ANRError$$;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/github/anrwatchdog/ANRError$$;)[Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, Lcom/github/anrwatchdog/ANRError$$;->b:[Ljava/lang/StackTraceElement;

    return-object v0
.end method
